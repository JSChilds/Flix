CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => 'eu-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "flix-bucket"
end