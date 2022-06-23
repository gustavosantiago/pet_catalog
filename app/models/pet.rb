class Pet < ApplicationRecord
  validates :name, :breed, :description, :url, presence: true
end
