class AddImageToStudentProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :student_profiles, :image, :string
    remove_column :students, :image
  end
end
