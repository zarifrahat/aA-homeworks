# require "byebug"
class Board
  attr_accessor :cups, :length

  def initialize(name1, name2)
    @name1, @name2 = name2, name2
    @cups = Array.new(14){Array.new}
    self.place_stones
    @length = @cups.length
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
       @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times {cup << :stone}
      end
    end
  end

  def valid_move?(start_pos)
    if (@cups[start_pos-1] != nil) && (@cups[start_pos-1].length == 0)
      raise "Starting cup is empty"
    end
    
    if !(start_pos-1 >= 0) || !(start_pos <= @length)
      raise 'Invalid starting cup'
    end
 
    true
  end

  def make_move(start_pos, current_player_name)
    # debugger
    temp_array = @cups[start_pos].dup
    @cups[start_pos] = []
    distribution_start_index = start_pos+1
    
    if current_player_name == @name1
      until temp_array.empty?
        next distribution_start_index += 1 if distribution_start_index == 13
        @cups[distribution_start_index] << temp_array.pop
        distribution_start_index += 1
      end
    end

    
    if current_player_name == @name2
      until temp_array.empty?
        next distribution_start_index += 1 if distribution_start_index == 6
        @cups[distribution_start_index] << temp_array.pop
        distribution_start_index += 1
      end
    end
    distribution_start_index
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end

b1 = Board.new("a","b")
b1

p b1.make_move(5,"a")