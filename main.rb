def bubble_sort(arr)
    
    sorted = false

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


test = [4,2,6,19,3,1,20]
bubble_sort(test)

test.each {|item| puts item}


