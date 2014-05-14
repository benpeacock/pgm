json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer, :question_id, :created_at, :updated_at, :program_id, :year_id
  json.url answer_url(answer, format: :json)
end