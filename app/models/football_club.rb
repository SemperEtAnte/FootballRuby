class FootballClub < ApplicationRecord
  belongs_to :country

  validates :name, presence: true, uniqueness: true
  validates :one, numericality: true
  validates :two, numericality: true
  validates :three, numericality: true
  validates :four, numericality: true
  validates :five, numericality: true

  before_save :do_sum

  def do_sum
    self.O = self.one.to_f + self.two.to_f + self.three.to_f + self.four.to_f + self.five.to_f
  end
end
