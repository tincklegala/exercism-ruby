# Creating A Binary Search Tree
class Bst
  attr_accessor :data, :left, :right
  def initialize(number)
    @data = number
    @left = nil
    @right = nil
  end

  def insert(number)
    if number <= data
      insert_left(number)
    else
      insert_right(number)
    end
  end

  def each(&block)
    left && left.each(&block)
    block.call(data)
    right && right.each(&block)
  end

  private

  def insert_left(number)
    if left.nil?
      @left = Bst.new(number)
    else
      left.insert(number)
    end
  end

  def insert_right(number)
    if right.nil?
      @right = Bst.new(number)
    else
      right.insert(number)
    end
  end
end
