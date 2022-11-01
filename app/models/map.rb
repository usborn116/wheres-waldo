class Map < ApplicationRecord
  has_many :characters, dependent: :destroy
  has_many :scores, -> { order(time: :asc).limit(5) }, dependent: :destroy
end
