require_relative 'player'
require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

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
klutz=ClumsyPlayer.new("klutz",105)
knuckleheads.add_player(klutz)

berzerker=BerserkPlayer.new("berzerker",100)
knuckleheads.add_player(berzerker)

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
