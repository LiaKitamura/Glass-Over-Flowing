class BeerImporter

  def self.categories
    cats = BreweryAPI.categories.all

    cats.each do |category|
      puts "Importing Category: #{category.name}"
      Category.find_or_create_by!(name: category.name, resource_id: category.id)
    end
  end

  def self.styles
    styles = BreweryAPI.styles.all

    Category.all.each do |category|
      cat_styles = styles.select { |s| s.categoryId == category.id }
      cat_styles.each do |style|
        puts "Importing Style: #{style.name}"
        category.styles.find_or_create_by!(resources_id: style.id) do |style_type|
          style_type.category_name = category.name
          style_type.style_name = style.name
          style_type.style_description = style.description
          style_type.resources_id = style.id
        end
      end
    end
  end

  def self.beer_data
    Style.all.each do |style|
      beer_styles = BreweryAPI.beers.all(styleId: style.id, withBreweries: 'Y', withLabels: 'Y')
      beer_styles.take(10).each_with_index do |beer, index|
        puts "#{beer.name}"
        if beer.breweries
          beer_place = self.breweries(beer.breweries.first)
          puts "Brewery Id: #{beer_place.id} and Brewery name: #{beer_place.brewery_name}"
          puts "Importing Beer: ##{index} #{beer.name} for #{style.style_name}"
          style.beers.find_or_create_by!(resource_id: beer.id) do |beer_stuff|
            beer_stuff.name = beer.name
            beer_stuff.brewed_by = beer_place.brewery_name
            beer_stuff.beer_description = beer.description
            beer_stuff.abv = beer.abv
            beer_stuff.icon = beer.try(:labels).try(:icon)
            beer_stuff.large_image = beer.try(:labels).try(:large)
            beer_stuff.brewery_id = beer_place.id
          end
        end
      end
    end
  end

  def self.breweries(brewery_info)
    puts "Importing Brewery: #{brewery_info.name}"
    b = Brewery.find_or_create_by!(resource_id: brewery_info.id) do |brewery|
      brewery.brewery_name = brewery_info.name
      brewery.brewery_description = brewery_info.description
      brewery.website = brewery_info.website
      brewery.established = brewery_info.established
      brewery.location_name = brewery_info.locations[0].try(:name)
      brewery.location_type = brewery_info.locations[0].try(:location_type_display)
      brewery.street_address = brewery_info.locations[0].try(:street_address)
      brewery.locality = brewery_info.locations[0].try(:locality)
      brewery.region = brewery_info.locations[0].try(:region)
      brewery.postal_code = brewery_info.locations[0].try(:postal_code)
      brewery.phone = brewery_info.locations[0].try(:phone)
      brewery.hours = brewery_info.locations[0].try(:hours_of_operation)
      brewery.open_to_public = brewery_info.locations[0].try(:open_to_public)
      brewery.icon = brewery_info.try(:images).try(:icon)
      brewery.large_image = brewery_info.try(:images).try(:large)
      brewery.longitude = brewery_info.locations[0].try(:longitude)
      brewery.latitude = brewery_info.locations[0].try(:latitude)
      brewery.resource_id = brewery_info.id
      # binding.pry
    end
    return b
  end
end
