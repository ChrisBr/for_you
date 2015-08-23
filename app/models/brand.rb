class Brand < ActiveRecord::Base
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  validates_presence_of :name, :description

  default_scope { order('name ASC') }

  self.per_page = 3
end
