json.array!(@manipuulyators) do |manipuulyator|
  json.extract! manipuulyator, :id
  json.url manipuulyator_url(manipuulyator, format: :json)
end
