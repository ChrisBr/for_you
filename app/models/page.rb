class Page < ActiveRecord::Base
  validates_presence_of :title, :content
  extend FriendlyId
  friendly_id :slug, use: :slugged
end
