def bubble_sort(array)
  array.length.times do
    (0...(array.length - 1)).each do |i|
      if array[i] > array[i + 1]
        deleted = array.delete_at(i)
        array.insert(i + 1, deleted)
      end
    end
  end
  array
end

def bubble_sort_by(array)
  array.length.times do
    (0...(array.length - 1)).each do |i|
      left = array[i]
      right = array[i + 1]
      if yield(left, right).positive?
        deleted = array.delete(left)
        array.insert(i + 1, deleted)
      end
    end
  end
  array
end
