class Dinosaur < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :age, length: { maximum: 5 }, allow_blank: true
  validates :image_url, lenght: { maximum: 255 }, allow_blank: true

  scope :order_by_name, -> { order(:name) }

  def is_baby?
  age < 3
  end
end
