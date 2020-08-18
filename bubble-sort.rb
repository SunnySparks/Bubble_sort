arr = [10, 30, 55, 98, 44, 31]



def bubble_sort(array) 
    for i in 0..(array.length-1)
    array[i] <=> array[i+1]
    if array[i] > array[i+1]
        deleted = array.delete_at(i)
        array.insert(i+1, deleted)
        i += 1
    else 
        i += 1
    end
end
end

bubble_sort(arr)