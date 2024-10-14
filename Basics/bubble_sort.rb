def bubble_sort(array)
  while array != array.sort

    array.each_with_index do |element, index|
      if array[index+1] && array[index] > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
      end
    end

  end
  return array
end




puts bubble_sort([4,3,78,2,0,2])



