require 'csv'

Page.destroy_all
Rating.destroy_all
Game.destroy_all
Genre.destroy_all
Platform.destroy_all
User.destroy_all

games_csv = File.read(Rails.root.join('db', 'result.csv'))
games_csv_parsed = CSV.parse(games_csv, headers: true)

puts 'Creating games'
games_csv_parsed.each do |row|
    genre = Genre.find_or_create_by(name: row.to_hash['Genre'])
    platform = Platform.find_or_create_by(name: row.to_hash['Platform'])
    game = Game.new(name: row.to_hash['Name'],
                    metascore: row.to_hash['Critic_Score'],
                    year: row.to_hash['Year_of_Release'])
    game.genre = genre
    game.platform = platform
    game.save
    puts game.inspect
end

puts 'Creating Users'
100.times do
    user = User.create(name: Faker::Name.unique.name)
    puts user.inspect
end

puts 'Creating ratings'
1000.times do
    user = User.all.sample
    game = Game.all.sample
    rating = Rating.create(user: user, game: game, userscore: rand(4..10))
    puts rating.inspect
end

puts 'Creating static pages'
Page.create(title: "Home",
            content: "Welcome to Games Feed, a site that pulls a data source from Kaggle and displays the top 1000 games that has critical acclaim back in 2017. Feel free to search and see what our users rated the games!",
            permalink: "home")

Page.create(title: "About Us",
            content: "Created by Dwight Mopas.",
            permalink: "about-us")
Page.create(title: "Contact",
            content: "You can reach me at dmopas@academic.rrc.ca",
            permalink: "contact-us")