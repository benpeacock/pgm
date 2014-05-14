json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer, :question_id, :program_id, :year_id
  json.url answer_url(answer, format: :json)
end
