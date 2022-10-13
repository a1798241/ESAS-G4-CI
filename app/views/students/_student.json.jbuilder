json.extract! student, :id, :student_id, :first_name, :last_name, :password, :created_at, :updated_at
json.url student_url(student, format: :json)
