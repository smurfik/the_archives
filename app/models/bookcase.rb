class Bookcase < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true
  has_many :books, dependent: :destroy
end
