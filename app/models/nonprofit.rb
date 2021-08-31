class Nonprofit < ApplicationRecord
  CATEGORIES = {
    "Environment" => ["Forest", "Ocean", "Global Warming", "Sensibilization", "Agriculture"],
    "Animals" => ["Birds", "Bees", "Animals Shelters", "Biodiversity", "Endangered Species"],
    "Solidarity" => ["Homeless", "Elderly People", "Disability", "Orphans", "Refugees"],
    "Culture" => ["Architecture", "Theater", "Gastronomy", "Patrimony", "Museum"],
    "Health" => ["Hospitals", "Mental health", "Malnutrition", "Water access", "Diseases"],
    "Humanitarian" => ["Refugees", "Education", "Poverty", "Orphans"],
    "Living Together" => ["Handicapted integration", "Gender equality", "Anti-Racism", "Discrimination"],
    "Sport" => ["Sport access", "Handisports", "Integration through sport", "Inclusivity", "Women sport promotion"],
    "Employment" => ["Employment access", "Formations", "Equals employment opportunity ", "Disability"],
    "Education" => ["Education access", "Alphabetisation", "Education for disabled"]
  }
  has_one_attached :photo

  SUB_CATEGORIES = CATEGORIES.values.flatten

  has_many :donations
  validates :sub_category, inclusion: { in: SUB_CATEGORIES }

  def sub_category_image_path
    sub_category.downcase.split.join("-") + '.png'
  end

  def category
    search_category = CATEGORIES.find do |_, values|
      values.include?(sub_category)
    end
    search_category.first
  end
end
