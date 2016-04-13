class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :subjects, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
end
