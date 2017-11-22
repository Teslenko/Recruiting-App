json.articles do
  json.array!(@pets) do |pet|
    json.name pet.name
    json.url pet_path(pet)
  end
end