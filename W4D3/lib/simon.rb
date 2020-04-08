require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    
    @game_over = false
    @sequence_length = 1
    @seq = []
  end

  def play
    while !game_over
      take_turn
    end
    game_over_message
    return
    reset_game
  end

  def take_turn
    # debugger
    while !game_over    
      show_sequence
      require_sequence
      if @game_over == false
        round_success_message
        @sequence_length += 1
        next
      else
        break
      end
    end
  end

  def show_sequence
   add_random_color
   puts @seq
  end

  def require_sequence
    puts "What was the sequence? Tell me!"
    user_sequence = gets.chomp
    user_sequence_array = user_sequence.split(" ")
    if user_sequence_array != @seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "this was a triumph! huge success!"
  end

  def game_over_message
    puts "game over :("
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

s1 = Simon.new
p s1.play
