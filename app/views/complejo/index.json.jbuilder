json.array!(@complejos) do |complejo|
  json.extract! complejo, :categoria, :concentrador, :sensor, :parametro, :valor 
  json.url Complejo_url(complejo, format: :json)
end
