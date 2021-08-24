class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :donation_sessions
  has_many :donations, through: :donation_sessions

  validate :favorite_sub_categories_is_in_list

  private

  def favorite_sub_categories_is_in_list
    if favorite_sub_categories.any? {|sub_category| !Nonprofit::SUB_CATEGORIES.include?(sub_category)}
      errors.add :favorite_sub_categories, :inclusion
    end
  end
end
