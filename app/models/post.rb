class Post < ActiveRecord::Base
  has_many :categories
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :pictures, as: :imageable

end
