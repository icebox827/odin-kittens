class Kitten < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: true }, length: { in: 3..20 }
  validates :age, :cuteness, :softness, presence: true
end
