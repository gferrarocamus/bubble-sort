=begin
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

=end

def bubble_sort_by(arr)
    (arr.length-1).times do
        arr.each_with_index do |item, i|
            yield(item, arr[i+1])
        end    
    end
end

bubble_sort_by([4,2,6,19,3,1,20]) { |x,y| x, y = y, x if x > y  }



#test 
#bubble_sort(test)
#bubble_sort_by(test)

test.each {|item| puts item}


