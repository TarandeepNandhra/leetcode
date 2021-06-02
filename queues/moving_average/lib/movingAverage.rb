class MovingAverage
  def initialize(size)
    @queue = Array.new
    @size = size
  end

  def next(value)
    @queue.shift(1) if @queue.length == @size
    @queue.push(value)
    @queue.sum.to_f / @queue.length
  end
end
