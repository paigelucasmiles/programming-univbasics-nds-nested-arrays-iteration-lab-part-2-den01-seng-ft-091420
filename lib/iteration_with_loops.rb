  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
def find_min_in_nested_arrays(array_of_daily_temperatures)
  row_index = 0
  daily_min_temp = []
  while row_index < array_of_daily_temperatures.count do
    element_index = 0
    while element_index < array_of_daily_temperatures[row_index].count do
      if daily_min_temp[row_index] == nil
        daily_min_temp.push(array_of_daily_temperatures[row_index][element_index])
        elsif daily_min_temp[row_index] > (array_of_daily_temperatures[row_index][element_index])
        daily_min_temp[row_index] = array_of_daily_temperatures[row_index][element_index]
      end
      element_index += 1
    end
    row_index += 1
  end
  daily_min_temp
end