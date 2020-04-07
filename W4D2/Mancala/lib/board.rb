require "byebug"
class Board
  attr_accessor :cups, :length

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
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
    if (@cups[start_pos] != nil) && (@cups[start_pos].length == 0)
      raise "Starting cup is empty"
    end
    
    if !(start_pos >= 0) || !(start_pos <= @length)
      raise 'Invalid starting cup'
    end
 
    true
  end

  def make_move(start_pos, current_player_name)
    # debugger
    temp_array = @cups[start_pos].dup
    @cups[start_pos] = []
    distribution_start_index = start_pos+1
     ending_cup_idx = distribution_start_index
    if current_player_name == @name1
      until temp_array.empty?
        next distribution_start_index += 1 if distribution_start_index == 13
        @cups[distribution_start_index % 14] << temp_array.pop
        distribution_start_index = 0 if distribution_start_index > 13
        ending_cup_idx = distribution_start_index
        distribution_start_index += 1
      end
    end

    
    if current_player_name == @name2
      until temp_array.empty?
        next distribution_start_index += 1 if distribution_start_index == 6
        @cups[distribution_start_index % 14] << temp_array.pop
        distribution_start_index = 0 if distribution_start_index > 13
        ending_cup_idx = distribution_start_index
        distribution_start_index += 1
      end
    end
    self.render
    
    self.next_turn(ending_cup_idx, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    # debugger
    if @cups[ending_cup_idx].length == 1
      
      return :switch
    end

    if current_player_name == @name1
      if ending_cup_idx == 6
        return :prompt
      end
    end

    if current_player_name == @name1
      if ending_cup_idx == 13
        return :prompt
      end
    end

    if !@cups[ending_cup_idx].empty?
        return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty?} || @cups[7..12].all? { |cup| cup.empty?}
  end

  def winner
    if @cups[6].length > @cups[13].length
      return @name1
    elsif @cups[6].length < @cups[13].length
      return @name2
    else
      return :draw
    end
  end
end

b1 = Board.new("Erica","James")
# p b1.valid_move?(12)

p b1.make_move(0,"Erica")
p b1.make_move(5, "Erica")
# p b1.make_move(9,"James")
