class User < ApplicationRecord
  enum role: { admin: 0, sub_admin: 1, health_worker: 2, patient: 3 }
  
  belongs_to :hospital
  belongs_to :test_center
  has_many :appointments, dependent: :destroy
end
