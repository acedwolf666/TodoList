class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.boolean :check_box
      t.string :title
      t.date :date
      t.date :due_date
      t.text :description

      t.timestamps
    end
  end
end
