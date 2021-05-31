class Category < ApplicationRecord
    validates :category_name, presence: true, uniqueness: true
    validates :category_details, presence: true

    has_many :tasks
end
