class Todo < ApplicationRecord
  validates_presence_of :title, :due_date, :description 
end
