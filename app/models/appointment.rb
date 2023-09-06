class Appointment < ApplicationRecord
  enum status: { pending: 0, completed: 1 }
  enum user_role: { sub_admin: 1, patient: 3 }
  belongs_to :user
  belongs_to :hospital
  belongs_to :test_center
end
