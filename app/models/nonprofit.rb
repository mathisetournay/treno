class Nonprofit < ApplicationRecord
  CATEGORIES = {
    "Animals" => ["dog", "cat"]

  }

  SUB_CATEGORIES = CATEGORIES.values.flatten

  has_many :donations
  validates :sub_category, inclusion: { in: SUB_CATEGORIES }
end
