class MyCircularQueue
  attr_reader :queue, :size, :head, :tail

  def initialize(k)
    @queue = Array.new
    @size = k
    @head = -1
    @tail = -1
  end

  def en_queue(value)
    return false if is_full()

    @head = 0 if is_empty()
    @tail = (@tail + 1) % @size
    @queue[@tail] = value
    true
  end

  def de_queue()
    return false if is_empty()
      
    if @head == @tail
      @head, @tail = -1, -1 
      return true
    end
    @head = (@head + 1) % @size
    true
  end

  def front()
    is_empty() ? -1 : @queue[@head]
  end

  def rear()
    is_empty() ? -1 : @queue[@tail]
  end

  def is_empty()
    @head == -1
  end

  def is_full()
    (@tail + 1) % @size == @head
  end
end
