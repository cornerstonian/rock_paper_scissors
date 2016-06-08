
# The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use gets)
# The game should then randomly select the computer's selection
# The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"


# Epic Mode
# Instead of asking the player for their choice, have the computer automatically randomly select both the player and computer
# run the simulation 1000 times
# Track who which choice wins the most often


class Game
    attr_accessor :player_one_choice, :computer

    def initialize
      @computer = %w(r p s)
    end

    def play
      puts "Welcome to Rock, Paper, Scsissors \nChoose r for Rock \nChoose p for Paper \nChoose s for Scissors"
      @player_one_choice = gets.chomp.downcase
      computer_choice = computer.sample


        if player_one_choice == "r" && computer_choice == "s"
           puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
         elsif player_one_choice == "r" && computer_choice == "p"
           puts "Player: ROCK vs Computer: Paper ----- COMPUTER WINS"
         elsif player_one_choice == "p" && computer_choice == "r"
           puts "Player: PAPER vs Computer: rock ----- PLAYER WINS"
         elsif  player_one_choice == "p" && computer_choice == "s"
            puts "Player: PAPER vs SCISSORS: ----- COMPUTER WINS"
          elsif player_one_choice == "s" && computer_choice == "r"
            puts "Player: SCISSORS vs Rock: ----- COMPUTER WINS"
          elsif player_one_choice == "s" && computer_choice == "p"
            puts "Player: SCISSORS vs Paper: ----- PLAYER WINS"
          elsif player_one_choice == computer_choice
            puts "It's A Tie!"
          end

          play_again?
    end

    def play_again?
       puts "Would you like to play again? y/n"
       response = gets.chomp.downcase
         if response == "y"
          play
         elsif response == "n"
          quit
         else
          invalid_command
         end
     end

     def invalid_command
        puts "Sorry, but you command is invalid, Please try again"
        play
      end

      def quit
          puts "Goodbye"
      end



end

game = Game.new
game.play
