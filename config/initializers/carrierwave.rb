fog_environments = %w(production development)
if fog_environments.include? Rails.env
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider =>'AWS',
      :aws_access_key_id => '0AQ786FHMYCF7DAHRVG2',
      :aws_secret_access_key => 'zzLopGOyTDSdwIpI3qujGvOmH1gXBdX/q86zX1NY'
    }
    config.fog_directory = 'fucking-do-it'
    config.storage = :fog
  end
else
  CarrierWave.configure do |config|
    config.storage = :file
  end
end
