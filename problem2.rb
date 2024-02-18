class AdventureGame
  def initialize
    @total_points = 0
    @room_points = [5, 10, 15]
  end

  def start_game
    puts "Welcome to the Adventure Game!"
    puts "You have 0 points."

    loop do
      puts "Choose a room (1-3) to enter or 'exit' to end the game:"
      choice = gets.chomp.downcase

      case choice
      when 'exit'
        end_game
        break
      when '1', '2', '3'
        enter_room(choice.to_i)
      else
        puts "Invalid choice. Please enter a number between 1 and 3 or 'exit'."
      end
    end
  end

  private

  def enter_room(room_number)
    room_index = room_number - 1
    room_points = @room_points[room_index]

    @total_points += room_points
    puts "You entered Room #{room_number} and earned #{room_points} points."
  end

  def end_game
    puts "Game over! You collected a total of #{@total_points} points."
  end
end

game = AdventureGame.new
game.start_game
