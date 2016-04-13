class Category < ActiveRecord::Base
  has_many :subcategories, dependent: :destroy
  has_many :subjects, through: :subcategories

  validates :name, presence: true, length: { minimum: 2 }
end
