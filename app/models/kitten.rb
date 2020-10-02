class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  before_create :capitalize

  def capitalize
    self.name.capitalize!
    self.cuteness.capitalize!
    self.softness.capitalize!
  end
end
