# frozen_string_literal: true

class Image < ApplicationRecord
  has_many :values, dependent: :destroy
  belongs_to :theme

  # get images array of arrays by given theme_id
  scope :theme_images, ->(theme_id) { select('id', 'name', 'file', 'ave_value').where(theme_id:) }

  # find image by id
  scope :find_image, ->(image_id) { find(image_id) }

  def self.recalculate_avg_value(image_id, ave_value)
    image = find(image_id)
    image.update(ave_value:)
  end

  def self.show_valued_image(new_value_data)
    image_id = new_value_data[:image_id]
    theme_id = new_value_data[:theme_id]
    current_user_id = new_value_data[:user_id]
    user_valued, value = Value.user_valued_exists(current_user_id, image_id)
    values_qty = Value.all.count.round
    common_avg_value = user_valued == 1 ? find(image_id).ave_value.round : 0

    data = { values_qty:,
             current_user_id:,
             theme_id:,
             image_id:,
             user_valued:,
             value:,
             common_avg_value: }
    logger.info "In show_valued_image: #{data.inspect} "
    data
  end

  def self.value_and_update(new_value_data)
    image_id = new_value_data[:image_id]
    Value.create(new_value_data)
    ave_value = Value.calculate_avg_value(image_id).round
    recalculate_avg_value(image_id, ave_value)
    show_valued_image(new_value_data)
  end
end
