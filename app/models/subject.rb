class Subject < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true, length: { minimum: 2 }
end
