class Offer < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_presence_of :title, :content

  default_scope { order('created_at DESC') }

  self.per_page = 3
end
