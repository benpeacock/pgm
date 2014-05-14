json.array!(@questions) do |question|
  json.extract! question, :id, :question, :tab_id, :type_id, :position
  json.url question_url(question, format: :json)
end
