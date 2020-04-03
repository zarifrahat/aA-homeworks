class Stack
    def initialize
        # create ivar to store stack here!
        @stack = []
    end

    def push(el)
        # adds an element to the stack
        @stack << el
    end

    def pop
        # removes one element from the stack
        @stack.pop
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        @stack.last
    end
end

# s1 = Stack.new
# p s1

# s1.push(7)
# s1.push(1)
# s1.pop
# s1.push(2)
# s1.push(9)
# p s1
# p s1.peek


