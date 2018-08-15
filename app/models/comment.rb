class Comment < ApplicationRecord

  belongs_to :article, required: true
  belongs_to :user, required: true

  validates :body, presence: true
end
