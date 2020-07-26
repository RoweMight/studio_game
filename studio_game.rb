require_relative 'player'
require_relative 'game'

player1= Player.new("larry",90)

player2=Player.new("moe")

player3 =Player.new("curly",125)

knuckleheads = Game.new("knuckleheads")
puts knuckleheads.title
puts "\n"

knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play