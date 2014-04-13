json.array!(@studies) do |study|
  json.extract! study, :id, :degree, :institution, :year, :score, :SAT, :GPA
  json.url study_url(study, format: :json)
end
