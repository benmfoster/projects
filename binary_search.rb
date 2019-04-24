def binary_search(sorted_array, desired_item)
    # your code goes here!
    high = false
    index_lag = 0
    while sorted_array.length > 1
    middle_index = sorted_array.length / 2
    n = sorted_array[middle_index]
        if n == desired_item && high == true
            return middle_index + index_lag
        elsif n == desired_item
            return middle_index
        elsif n > desired_item
            sorted_array = sorted_array[0...middle_index]
        else
            high = true
            index_lag += middle_index
            sorted_array = sorted_array[middle_index..-1]
            
        end
    end
    nil
end
  
  p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 18)
  p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 6)
  p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 37)
  p binary_search([2, 6, 10, 17, 18, 19, 29, 37, 72], 9)