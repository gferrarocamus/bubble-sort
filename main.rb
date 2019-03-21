def bubble_sort(arr)

    (arr.length-1).times do
        arr.each_with_index do |item, i|
            if i < arr.length-1
                if item > arr[i+1]
                    arr[i] = arr[i+1]
                    arr[i+1] = item
                end
            end
        end    
    end
    return arr
end

def bubble_sort_by(arr)
    (arr.length-1).times do
        arr.each_with_index do |item, i|
            if i < arr.length-1
                if yield(item, arr[i+1]) > 0
                    arr[i] = arr[i+1]
                    arr[i+1] = item
                end
            end
        end    
    end
end