class BeerImporter

  def self.import_data
    # Login to and access the API
    all_brews = BreweryAPI

    # Get the beers/categories/etc... that you want
    #### e.g. brewery_db.beers.random
    #### It might return paginated so you'd have to loop through each page
    cats = all_brews.categories.all
    styles = all_brews.styles.all
    brewskies = all_brews.beers

    # Save each beer/category/etc into your database
    cats.each do |category|
      puts "Importing Category: #{category.name}"
      c = Category.find_or_create_by(name: category.name)

      cat_styles = styles.select { |s| s.categoryId == category.id }
      cat_styles.each do |style|
        puts "Importing Style: #{style.name}"
        s = c.styles.find_or_create_by(category_name: c.name, style_name: style.name, resources_id: style.id, style_description: style.description)

        beer_styles = brewskies.all(styleId: style.id, withBreweries: 'Y')
        beer_styles.each do |beer|
          puts "Importing Beer: #{beer.name}"
          b = s.beers.find_or_create_by(name: beer.name, ABV: beer.abv, beer_description: beer.description)
          b.breweries.find_or_create_by(brwery_name: beer.breweries.name, brewery_description: beer.breweries.description, website: beer.breweries.website, icon: beer.breweries.images.icon, large_image: beer.breweries.images.icon.large )
        end
      end
    end
  end
end
