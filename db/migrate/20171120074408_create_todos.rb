class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :check_box
      t.string :title
      t.date :date
      t.integer :due_date
      t.text :description

      t.timestamps
    end
  end
end
