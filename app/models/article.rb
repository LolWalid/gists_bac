class Article < ActiveRecord::Base
  belongs_to :user
  validates :description, presence: true
  validates :filename, presence: true
  validates :user, presence: true
end
