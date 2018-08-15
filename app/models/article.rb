class Article < ApplicationRecord

  belongs_to :user, required: true

  has_many :comments, dependent: :destroy
  has_many :ratings,  dependent: :destroy, as: :ratingable

  validates :title,
            :text,
            presence: true


  validates :title, length: { minimum: 5 }

end

