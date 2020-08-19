arr = [10, 30, 55, 98, 44, 31]

def bubble_sort(array) 
    (array.length).times do
     for i in 0...(array.length - 1)
        if array[i] > array[i + 1] 
          deleted = array.delete_at(i)
          array.insert(i+1, deleted)
        end 
    end
    end
    puts array
end

bubble_sort(arr)

def bubble_sort_by(array) 

  (array.length).times do
    for i in 0...(array.length - 1)
      left = array[i]
      right = array[i + 1]
       if yield(left,right) > 0
         deleted = array.delete(left)
         array.insert(i + 1, deleted)
       end 
    end
  end
  puts array
end

  bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
    left.length - right.length
  end
