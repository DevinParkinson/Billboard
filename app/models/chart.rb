class Chart < ApplicationRecord
  has_many :artists dependent: :destroy
  has_many :songs dependent: :destroy
end
