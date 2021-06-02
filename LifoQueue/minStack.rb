# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()

class MinStack
    def initialize()
        @stack = Array.new
        @min_stack = Array.new
    end

    def push(val)
        @stack << val
        @min_stack << val if @min_stack.empty || @min_stack[-1] >= val
    end

    def pop()
        val = @stack.pop
        @min_stack.pop if val <= @min_stack[-1]
    end

    def top()
        @stack[-1]
    end

    def get_min()
        @min_stack[-1]
    end
end

