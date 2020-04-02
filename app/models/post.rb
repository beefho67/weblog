class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  paginates_per 5
end
