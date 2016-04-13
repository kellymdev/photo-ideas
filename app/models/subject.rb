class Subject < ActiveRecord::Base
  belongs_to :subcategory

  validates :name, presence: true, length: { minimum: 2 }
end
