json.array!(@deadlines) do |deadline|
  json.extract! deadline, :id, :deadline_title, :start_date, :end_date, :explanation, :status
  json.url deadline_url(deadline, format: :json)
end
