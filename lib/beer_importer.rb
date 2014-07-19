class BeerImporter

  def self.import_data(options={})
    # Login to and access the API
    all_brews = BreweryAPI

    # page_number = options.fetch(:page_number, 1)
    # for page stuff (styleId: style.id, withBreweries: 'Y', withLabels: 'Y', p: page_number)

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
        s = c.styles.find_or_create_by!(resources_id: style.id) do |style_type|
          style_type.category_name = c.name
          style_type.style_name = style.name
          style_type.style_description = style.description
          style_type.resources_id = style.id
        end

        beer_styles = brewskies.all(styleId: style.id, withBreweries: 'Y', withLabels: 'Y')
        beer_styles.each do |beer|
          puts "Importing Beer: #{beer.name}"
          b = s.beers.find_or_create_by!(resource_id: beer.id) do |beer_stuff|
            beer_stuff.name = beer.name
            beer_stuff.beer_description = beer.description
            beer_stuff.ABV = beer.abv
            beer_stuff.icon = beer.try(:labels).try(:icon)
            beer_stuff.large_image = beer.try(:labels).try(:large)
            beer_stuff.brewery_id = beer.breweries.first.id
          end
          puts "Importing Brewery: #{beer.breweries.first.name}"
          Brewery.find_or_create_by!(resource_id: beer.breweries.first.id) do |brewery|
            brewery.brewery_name = beer.breweries.first.name
            brewery.brewery_description = beer.breweries.first.description
            brewery.website = beer.breweries.first.website
            brewery.icon = beer.breweries.first.try(:images).try(:icon)
            brewery.large_image = beer.breweries.first.try(:images).try(:large)
            brewery.resource_id = beer.breweries.first.id
            # brewery.beers << b.id unless brewery.beers.include?(b.id)
          end
        end
      end
    end
  end
end
