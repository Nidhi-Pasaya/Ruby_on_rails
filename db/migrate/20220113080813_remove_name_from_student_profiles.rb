class RemoveNameFromStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :student_profiles, :name
  end
end
