class Queue

    def initialize
        @queue= []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end
    
end

# q1 = Queue.new

# p q1
# q1.enqueue(7)
# q1.enqueue(1)
# q1.enqueue(2)
# q1.enqueue(9)
# q1.dequeue
# q1.dequeue
# p q1
# p q1.peek
