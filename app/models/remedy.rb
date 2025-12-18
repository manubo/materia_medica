class Remedy < ApplicationRecord
  has_many :entries, -> { includes(:category).order("categories.sorting") }
  has_many :categories, through: :entries

  accepts_nested_attributes_for :entries, allow_destroy: false

  validates :name, presence: true
  validates :acronym, uniqueness: true, allow_nil: true
end
