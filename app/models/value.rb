class Value < ApplicationRecord
  belongs_to :user

  scope :user_valued_image, ->(current_user_id, image_id) { where(user_id: current_user_id, image_id:) }

  def self.user_valued_exists(current_user_id, image_id)
    value_image = user_valued_image(current_user_id, image_id)
    if value_image.blank?
      res = 0
      value = 0
    else
      res = 1
      value = value_image[0].value
    end
    [res, value]
  end

  def self.calculate_avg_value(image_id)
    values_arr = where(image_id:).pluck(:value)
    values_sum = values_arr.inject(:+)
    ave_value = values_sum / values_arr.size
    logger.info "In calc_average_value: values_arr = #{values_arr.inspect}, values_sum = #{values_sum.inspect}, ave_value = #{ave_value.inspect}"
    ave_value.round
  end
end
