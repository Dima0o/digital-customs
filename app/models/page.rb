class Page < ApplicationRecord

  before_validation do |obj|
    obj.start = 0
  end

  validates :name,
            :description,
            :start,
            # :rating,
            presence: true,
            length: { minimum: 5 }

end
