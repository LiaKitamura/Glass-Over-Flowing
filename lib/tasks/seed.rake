namespace :seed do

  # desc 'Import data from BreweryDB'
  # task beer_data: :environment do
  #   require Rails.root.join('lib', 'beer_importer')
  #   puts "LOOK MA! I'm importing"
  #   # page_number = ENV['PAGE_NUMBER'] || 1
  #   BeerImporter.import_data #({page_number: page_number})
  # end

  desc 'Beer categories'
  task beer_categories: :environment do
    require Rails.root.join('lib', 'beer_importer')
    puts "I'm importing categories"
    BeerImporter.categories
  end

  desc 'Beer styles'
  task beer_styles: :environment do
    require Rails.root.join('lib', 'beer_importer')
    puts "I'm importing styles"
    BeerImporter.styles
  end

  desc 'Beers'
  task beers_data: :environment do
    require Rails.root.join('lib', 'beer_importer')
    puts "I'm importing beers"
    BeerImporter.beers_data
  end
end
