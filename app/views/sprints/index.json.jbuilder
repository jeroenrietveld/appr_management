json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :startdate, :enddate
  json.url sprint_url(sprint, format: :json)
end
