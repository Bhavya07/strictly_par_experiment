json.array!(@educations) do |education|
  json.extract! education, :id, :degree, :Institute, :Year, :CGPA, :Percentage
  json.url education_url(education, format: :json)
end
