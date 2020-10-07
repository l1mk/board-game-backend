# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# test seed
player = Player.create(name: "zero", wins: 999, loses: 0)
game = Game.create(turns: 999, player1: "red", pokemon1: "charmander", player2: "blue", pokemon2: "squirtle", player3: "brock", pokemon3: "onix", player4: "misty", pokemon4: "staryu" )

#mandatory seed
pikachu = Character.create(pokemon: "pikachu", attack: 0, defense: 0, speed: 1, luck: 0)
eevee = Character.create(pokemon: "eevee", attack: 1, defense: 0, speed: 0, luck: 0)
jigglypuff = Character.create(pokemon: "jigglypuff", attack: 0, defense: 1, speed: 0, luck: 0)
togepi = Character.create(pokemon: "togepi", attack: 0, defense: 0, speed: 1, luck: 1.5)