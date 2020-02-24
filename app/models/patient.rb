class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :physicians, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end
end
