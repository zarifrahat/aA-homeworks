class Map

    def initialize
        @map = []
    end

    def set(key,value)
        (0...@map.length).each do |i|
            if @map[i].include?(key)
                @map[i][1] = value
            end
        end
        @map << [key, value]
    end

    def get(key)
        @map.each do |pair|
            return pair if pair.first == key
        end
    end

    def delete(key)
        @map.each do |pair|
            @map.delete(pair) if pair.first == key
        end
    end

    def show
        p @map
    end
end

# m1 = Map.new
# m1.set("red", 1)
# m1.set("blue", 5)
# m1.set("orange", 2)
# m1.set("yellow", 3)
# m1.set("green", 4)
# m1.set("violet", 6)
# p m1
# m1.delete("green")
# m1.delete("yellow")
# m1.show


