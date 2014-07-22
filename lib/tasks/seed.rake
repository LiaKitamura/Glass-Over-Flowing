namespace :seed do

  desc 'Import data from BreweryDB'
  task beer_data: :environment do
    require Rails.root.join('lib', 'beer_importer')
    puts "LOOK MA! I'm importing"
    # page_number = ENV['PAGE_NUMBER'] || 1
    BeerImporter.import_data #({page_number: page_number})
  end

end

# should i break up beer importer up into different files like categories, styles, beer???
  # would i then include them in beer importer. or what is the best approach to getting information
  # one model at a time?

# first just get all category names

# then get all style names

# then get maybe like 50 or so??? beers max for each style

# then get the brewery info for just the beers in db
