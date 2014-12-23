class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :due_date
      t.text :priority
      t.text :status

      t.timestamps
    end
  end
end
