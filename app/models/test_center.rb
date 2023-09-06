class TestCenter < ApplicationRecord
  belongs_to :hospital
  has_many :user
end
