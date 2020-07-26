require_relative 'player'

 class Game
    attr_reader :title
    
    def initialize (title)
    @title = title.capitalize
    @players =[] #initializing and creating array
    end


    #adding players  to array
    def add_player(a_player)
        @players.push(a_player)
    end

    def play
        puts "There are #{@players.size} players in #{title}."
        @players.each do |player|
            puts player
        end 

        @players.each do |player|
            player.w00t
            player.w00t
            player.w00t
            player.blam
        puts player 
        puts "\n"
        end
    end
end
