class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.integer :mark1
      t.integer :mark2
      t.integer :mark3
      t.float :total
      t.float :percentage

      t.timestamps
    end
  end
end
