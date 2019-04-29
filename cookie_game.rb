def game_play
    @map = [
      ["╔","══","══","══","══","══","══","══","══","══","══","══","══","╗"],
      ["║","¤ ","▒ ","¤ ","¤ ","▒ ","¤ ","¤ ","¤ ","▒ ","¤ ","¤ ","¤ ","║"],
      ["║","¤ ","▒ ","▒ ","¤ ","¤ ","¤ ","▒ ","¤ ","▒ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","▒ ","▒ ","¤ ","▒ ","▒ ","¤ ","▒ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","¤ ","¤ ","¤ ","¤ ","▒ ","¤ ","¤ ","▒ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","¤ ","▒ ","¤ ","¤ ","¤ ","▒ ","¤ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","¤ ","▒ ","▒ ","▒ ","▒ ","▒ ","¤ ","▒ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","¤ ","¤ ","¤ ","¤ ","¤ ","¤ ","¤ ","▒ ","🍪 ","¤ ","║"],
      ["╚","══","══","══","══","══","══","══","══","══","══","══","══","╝"]
    ]
  
    not_finished = true
    @current_square = [1,1]
    error_message = false
  
    reset_screen
  
    while not_finished
      reset_map
      place_character
      print_map  
  
      puts "Invalid entry please try again" if error_message
      puts "Enter w = ⬆, a = ⬅, s = ⬇, d = ➡ to move"
      input = gets.chomp
      error_message = false
  
  
      # vvvvvvv Add Your "If Statement" Here vvvvvvv
  
        # ONLY WRITE CODE IN THIS SECTION

      # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      reset_screen
    end
  
    if winner
      puts "Congratulations, You Won!!!"
    end
  
    puts "Thanks for playing"
  end
  
  
  
  
  
  
  
  
  # Preset methods
  
  def xerox_array(array) # this is to copy the array for animation purposes
    duplicate_array = array.dup
    duplicate_array.map! { |element| element.dup }
  end
  
  def reset_map # this works with deep_dup to create @presenting_map, a copy of @map
    duplicate_array = @map.dup
    @presenting_map = duplicate_array.map! { |element| xerox_array(element) }
  end
  
  def place_character
    @presenting_map[@current_square[0]][@current_square[1]] = "🐻 "
  end
  
  def print_map
    @presenting_map.each do |row|
      puts row.join("")
    end
  end
  
  def reset_screen # used for reseting the terminal screen, don't worry about the logic in this one.
    print "\e[2J"
    print "\e[H"
  end
  
  def moved_to_a_valid_square?
    new_square = @map[@current_square[0]][@current_square[1]]
  
    if new_square == "▒ "
      return false
    elsif new_square == "╔"
      return false
    elsif new_square == "══"
      return false
    elsif new_square == "╗"
      return false
    elsif new_square == "╝"
      return false
    elsif new_square == "╚"
      return false
    elsif new_square == "║"
      return false
    else
      return true
    end
  end
  
  def move_up
    @current_square[0] -= 1
  end
  
  def move_down
    @current_square[0] += 1 
  end
  
  def move_left
    @current_square[1] -= 1 
  end
  
  def move_right
    @current_square[1] += 1 
  end
  
  def win?
    @map[@current_square[0]][@current_square[1]] == "🍪 "
  end
  
  # Runner Code to run the game
  game_play