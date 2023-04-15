require 'pry-byebug'

def bubble_sort(array)
    original_sort = array.sort
    sorted_array = array.each_with_index.map do |element, index|
        next_element = array[index + 1]
        unless next_element == array.last
            if element > next_element
                array[index + 1] = element
                next_element
        else
            element
        end
    end
    
    loop do
        sorted_array = sorted_array.each_with_index.map do |element, index|
            next_element = sorted_array[index + 1]
            unless element == sorted_array.last
                # code
            else
                # code
            end
        end
        break if sorted_array == array.sort
    end
    sorted_array
end

array = [12, 3, 9, 34, 16, 11, 1, 4, 2, 9]
bubble_sort(array)

# STEPS:
# Check the shift counter to see if the loop's last iteration executed a shift
    # If it did, sort the array once again
    # If it didn't, return the current iteration of sorted_array
# To sort:
    # Get the first two elements of an array
    # If the first one is greater:
        # Push the next element into a new, empty array
        # Push the current element into that same array
    # If the first one is not greater:
        # Retain their indeces
    