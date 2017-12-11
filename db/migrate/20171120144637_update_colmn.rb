class UpdateColmn < ActiveRecord::Migration[5.1]
  def change
    change_column :todos, :check_box, :boolean
    change_column :todos, :due_date, :date
  end
end
