require 'pry-byebug'

def bubble_sort(array)
    sorted = false
    until sorted do
        i = 0
        while i < array.length - 1
            if array[i] > array[(i + 1)]
                array[i], array[(i + 1)] = array[(i + 1)], array[i]
                sorted = false
            end
            i += 1
        end
        sorted = (array == array.sort)
    end
    p array
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
    