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

bubble_sort(a)
