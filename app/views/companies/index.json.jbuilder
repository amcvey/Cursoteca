json.array!(@companies) do |company|
  json.extract! company, :id, :rut, :name, :business_name, :business_rotation, :bank_account, :email
  json.url company_url(company, format: :json)
end
