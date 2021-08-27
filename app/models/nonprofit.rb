class Nonprofit < ApplicationRecord
  CATEGORIES = {
    "Environment" => ["Forest", "Ocean", "Global Warming", "Sensibilization", "Agriculture"],
    "Animals" => ["Birds", "Bees", "Animals Shelters", "Biodiversity", "Endangered Species"],
    "Solidarity" => ["Homeless", "Elderly people", "Disability", "Orphans", "Refugees"],
    "Culture" => [],
    "Health" => [],
    "Humanitarian" => [],
    "Living Together" => [],
    "Sport" => [],
    "Employment" => [],
    "Education" => []
  }

  has_one_attached :photo

  SUB_CATEGORIES = CATEGORIES.values.flatten

  has_many :donations
  validates :sub_category, inclusion: { in: SUB_CATEGORIES }

  def sub_category_image_path
    sub_category.downcase.split.join("-") + '.png'
  end

  private

  def category
    search_category = CATEGORIES.find do |_, values|
      values.include?(sub_category)
    end
    search_category.first
  end

end
