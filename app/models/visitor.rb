class Visitor < ApplicationRecord
  validates :fullname, presence: true
  validates :nric, presence: true,
                   numericality: { only_integer: true },
                   length: { is: 12 }
  validates :temperature, presence: true
end
