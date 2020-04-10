fishes_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"

#Big O-ctopus and Biggest Fish

#Sluggish Octopus O(n^2)
def sluggish_octopus(array)
    biggest_fish = array[0]
    array.each_with_index do |ele1, i|
        array.each_with_index do |ele2, j|
            if (array[j].length > array[i].length) && (array[j].length > biggest_fish.length)
                biggest_fish = array[j]
            end
        end
    end
    biggest_fish
end


# p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"

#Dominant Octopus O(n log n)

def dominant_octopus(array)
    return array if array.length <= 1
    middle_index = array.length/ 2

    left = array[0...middle_index]
    right = array[middle_index..-1]

    sorted_left = dominant_octopus(left)
    sorted_right = dominant_octopus(right)

    merge(sorted_left, sorted_right)
end

def merge(left, right)
    final = []
    until left.empty? || right.empty?
        if left[0].length > right[0].length
            final << left.shift
        else
            final << right.shift
        end
    end
    final
end

#p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> fiiiissshhhhhh


#Clever Octopus O(n)

def clever_octopus(array)
    biggest_fish = array[0]
    array[1..-1].each do |fish|
        biggest_fish = fish if fish.length > biggest_fish.length
    end 
    biggest_fish
end 


#p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=>"fiiiissshhhhhh"



#Dancing Octopus

#Slow Dance  O(n) time.

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(direction, array)
    array.each_with_index do |ele, i|
        return i if ele == direction
    end 
end

# p slow_dance("up", tiles_array)
# # > 0

# p slow_dance("right-down", tiles_array)
# # > 3

# Constant Dance! O(1) time.

tiles_hash = { "up"=> 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down"=> 4, "left-down"=> 5, "left"=>6,  "left-up"=>7}


def fast_dance(direction, other_data_structure) 
    other_data_structure[direction]
end

# p fast_dance("up", tiles_hash)
# # > 0

# p fast_dance("right-down", tiles_hash)
# # > 3

