require 'movingAverage'

describe MovingAverage do
  let(:movingAverage) { MovingAverage.new(3) }
  it "Returns the first number when it's added to the movingAverage" do
    expect(movingAverage.next(1)).to eq(1)    
  end

  it "Returns the average of two numbers when a second number is added" do
    movingAverage.next(10)
    expect(movingAverage.next(1)).to eq(5.5)
  end

  it "Returns the average of the last three numbers when four numbers are added" do
    movingAverage.next(10)
    movingAverage.next(10)
    movingAverage.next(10)
    expect(movingAverage.next(1)).to eq(7)
  end
end