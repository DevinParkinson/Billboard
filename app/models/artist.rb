class Artist < ApplicationRecord
  belongs_to :chart
  has_many :songs
end
