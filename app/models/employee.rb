class Employee < ApplicationRecord
  has_many :addresses
  validates :first_name, :last_name, presence: true
end
