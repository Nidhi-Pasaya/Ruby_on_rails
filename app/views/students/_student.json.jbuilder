json.extract! student, :id, :firstName, :lastName, :mark1, :mark2, :mark3, :total, :percentage, :created_at, :updated_at
json.url student_url(student, format: :json)
