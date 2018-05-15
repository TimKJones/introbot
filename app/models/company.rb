class Company < ApplicationRecord
  has_many :employees

  INTRODUCTIONS_PER_DAY = 3
end
