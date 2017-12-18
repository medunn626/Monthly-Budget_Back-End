class User < ApplicationRecord
  include Authentication
  # has_many :examples
  has_many :expenses
  has_one :budget
end
