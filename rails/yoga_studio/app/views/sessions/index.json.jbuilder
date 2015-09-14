json.array!(@sessions) do |session|
  json.extract! session, :id, :name, :style, :occurs_at, :difficulty, :duration, :instructor_id
  json.url session_url(session, format: :json)
end
