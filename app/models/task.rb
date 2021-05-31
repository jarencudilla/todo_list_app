class Task < ApplicationRecord
  validates :task_name, presence: true, uniqueness: true
  validates :task_details, presence: true
  
  belongs_to :category
end
