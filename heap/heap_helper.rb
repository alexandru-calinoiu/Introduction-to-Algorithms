module HeapHelper
  def parent(index)
    (index / 2.0).ceil
  end

  def left(index)
    2 * index
  end

  def right(index)
    2 * index + 1
  end
end