class CreateStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :address
      t.integer :mobile
      t.references :Student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
