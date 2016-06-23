json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :full_name, :email_address, :phone_number, :authorized
  json.url nurse_url(nurse, format: :json)
end
