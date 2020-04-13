  class LRUCache
    def initialize(max_frames)
        @max_frames = max_frames
        @queue = []
    end

    def count
      # returns number of elements currently in cache
        queue.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        if @queue.include?(el)
            el_index = @queue.index(el)
            @queue.delete_at(el_index)
            @queue.push(el)
        else
            add_ele_after_check(el)
        end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p queue
    end

    private
    # helper methods go here!
    attr_reader :queue, :max_frames

    def add_ele_after_check(el)
        if count == max_frames
            @queue.shift
            @queue.push(el)
        else
            @queue.push(el)
        end
    end
  end


johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
