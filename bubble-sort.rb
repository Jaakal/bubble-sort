def bubble_sort(array)
    last_index = array.length

    while last_index > 1
        for i in 1...last_index
            next unless array[i - 1] > array[i]
                
            temp_value = array[i - 1]
            array[i - 1] = array[i]
            array[i] = temp_value
        end
        last_index -= 1
    end

    array
end

#puts "#{bubble_sort([10,4,3,78,2,0,2])}"

def bubble_sort_by(array)
    return array unless block_given?
    
    last_index = array.length

    while last_index > 1
        for i in 1...last_index
            next unless yield(array[i -1..i]) > 0
                
            temp_value = array[i - 1]
            array[i - 1] = array[i]
            array[i] = temp_value
        end
        last_index -= 1
    end

    array
end

result = bubble_sort_by(["hi","hello","hey"]) do |left, right|
    left.length - right.length
end

puts "#{result}"