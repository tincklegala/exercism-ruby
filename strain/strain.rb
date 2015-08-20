# Implementing keep and discard
class Array
  def keep(&block)
    result = []
    each do |object|
      result << object if block.call(object)
    end
    result
  end

  def discard(&block)
    self - keep(&block)
  end
end
