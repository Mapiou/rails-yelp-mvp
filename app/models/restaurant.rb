class Restaurant < ApplicationRecord
  CATEGORY_LIST = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category,  presence: true,
                        inclusion: { in: Restaurant::CATEGORY_LIST }
end
