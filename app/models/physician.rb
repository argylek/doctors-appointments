# frozen_string_literal: true

class Physician < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  def full_name
    "#{first_name} #{last_name}"
  end

  def parse_date(appointment)
    date = appointment.date
    parsed = Date.strftime(date)
    puts parsed.to_s
  end
end
