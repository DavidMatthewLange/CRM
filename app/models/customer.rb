class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  validates :phone_number, presence: true

  def self.ransackable_associations(auth_object = nil)
    [ "image_attachment", "image_blob" ]
  end

  def self.ransackable_attributes(auth_object = nil)
    [ "full_name", "phone_number", "email", "notes", "image" ]
  end
end
