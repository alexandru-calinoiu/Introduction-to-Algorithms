module HeapHelper
  # we need to correct indexes because in ruby arrays start from 0
  def parent(index)
    (index / 2.0).ceil - 1
  end

  def left(index)
    2 * index + 1
  end

  def right(index)
    2 * index + 2
  end

  def max_heapify(array, index)
    left_index = left(index)
    right_index = right(index)

    if left_index < array.length && array[index] < array[left_index]
      larger_index = left_index
    else
      larger_index = index
    end

    if right_index < array.length && array[larger_index] < array[right_index]
      larger_index = right_index
    end

    if larger_index != index
      array[index], array[larger_index] = array[larger_index], array[index]
      max_heapify(array, larger_index)
    end
  end

  def max_heapify_interative(array, index)
    begin
      swap = false
      left_index = left(index)
      right_index = right(index)

      if left_index < array.length && array[index] < array[left_index]
        larger_index = left_index
      else
        larger_index = index
      end

      if right_index < array.length && array[larger_index] < array[right_index]
        larger_index = right_index
      end

      if larger_index != index
        array[index], array[larger_index] = array[larger_index], array[index]
        index = larger_index
        swap = true
      end
    end while(swap)
  end
end