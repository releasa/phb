class Article < ActiveRecord::Base
  paginates_per 5
  attr_accessible :content, :title, :user_id, :category_id, :summary, :cover
  has_many :comments
  belongs_to :user
  mount_uploader :cover, ImageUploader
end
