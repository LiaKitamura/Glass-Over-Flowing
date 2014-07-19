namespace :seed do

  desc 'Import data from BreweryDB'
  task beer_data: :environment do
    require Rails.root.join('lib', 'beer_importer')
    puts "LOOK MA! I'm importing"
    # page_number = ENV['PAGE_NUMBER'] || 1
    BeerImporter.import_data #({page_number: page_number})
  end

end
