class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates :div_name, presence: true
  validates_length_of :div_name, maximum: 30
end
