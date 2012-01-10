module MathHelper
  # Finds the median value of an array. (Only works with things that 
  # can be added and divided. eg. numbers)
  def median(arr)
    sorted_arr = arr.sort
    if arr.size.even?
      ( sorted_arr[size / 2] + sorted_arr[size / 2 + 1] ) / 2
    else
      sorted_arr[(size / 2).ceil]
    end
  end
end
