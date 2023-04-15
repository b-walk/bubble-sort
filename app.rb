require 'pry-byebug'

def bubble_sort(original_array)
    ran_once = false
    loop do
        working_array = ran_once ? sorted_array : original_array
        ran_once = true 
        break if needed_to_sort == false
    end
end

array = [12, 3, 9, 34, 16, 11, 1, 4, 2, 9]
p bubble_sort(array)

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
    