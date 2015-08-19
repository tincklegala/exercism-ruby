# Implementing accumulate
class Array
  def accumulate(&block)
    result = []
    each do |object|
      result << block.call(object)
    end
    result
  end
end
