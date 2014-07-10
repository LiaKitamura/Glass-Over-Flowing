BreweryAPI = BreweryDB::Client.new do |config|
  config.api_key = ENV['BEER_API_KEY']
end
