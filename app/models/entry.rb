class Entry < ApplicationRecord
  belongs_to :remedy
  belongs_to :category
end
