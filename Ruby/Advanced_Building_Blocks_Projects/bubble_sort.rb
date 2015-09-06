#takes two elements
#checks if element 1 is greater than element 2
  #if so swaps their positions
#does this until array is sorted completely

def bubble_sort(array)
  while array != array.sort
    array.each_with_index do |elem, index|
      if (elem != array[-1] && elem > array[index + 1])
        array.insert((index +1), array.delete_at(index))
      end
    end
  end
  array
end
