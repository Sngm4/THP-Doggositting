class Dog < ApplicationRecord
  belongs_to :city, optional: true
  has_many :join_tables
  has_many :strolls, through: :join_tables
  has_many :dogsitters, through: :strolls
end
