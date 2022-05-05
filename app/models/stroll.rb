class Stroll < ApplicationRecord
  belongs_to :dogsitter
  has_many :join_tables
  has_many :dogs, through: :join_tables
  belongs_to :city, optional: true
end
