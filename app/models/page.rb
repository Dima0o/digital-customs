class Page < ApplicationRecord




  before_validation do |obj|
    obj.start = 0
  end

  #has_many :comments

  validates :name,
            :description,
            :start,
            # :rating,
            presence: true
            #length: { minimum: 5 }

end
