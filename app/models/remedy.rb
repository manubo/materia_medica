class Remedy < ApplicationRecord
  has_many :entries
  has_many :categories, through: :entries

  accepts_nested_attributes_for :entries, allow_destroy: false
end
