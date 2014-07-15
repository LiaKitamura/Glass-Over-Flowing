namespace :seed do

  desc 'Import data from BreweryDB'
  task beer_data: :environment do
    require Rails.root.join('lib', 'beer_importer')
    puts "LOOK MA! I'm importing"
    BeerImporter.import_data
  end

end
