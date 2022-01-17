json.extract! student_profile, :id, :name, :age, :email, :address, :mobile, :Student_id, :created_at, :updated_at
json.url student_profile_url(student_profile, format: :json)
