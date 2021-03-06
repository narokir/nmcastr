class Castingcall < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  #  https://pragmaticstudio.com/tutorials/using-active-storage-in-rails
  has_one_attached :main_image
  validate :acceptable_image

  def acceptable_image
    return unless main_image.attached?

    unless main_image.byte_size <= 1.megabyte
      errors.add(:main_image, "is too big")
    end

    acceptable_types = ["image/jpeg", "image/png"]

    unless acceptable_types.include?(main_image.content_type)
      errors.add(:main_image, "must be a JPEG or PNG")
    end
  end

  def casting_image
    if main_image.attachment.nil?
      main_image = "https://via.placeholder.com/500x500"
    else
      main_image
    end
  end
end
