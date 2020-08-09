require_relative 'player'
require_relative 'game'

# player1 = Player.new("moe")
# player2 = Player.new("larry", 200)
# player3 = Player.new("curly", 125)
# player4 = Player.new("Shemp", 90)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || 'players.csv')

# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)
# knuckleheads.add_player(player4)

loop do
  puts "\n How many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.save_high_scores
