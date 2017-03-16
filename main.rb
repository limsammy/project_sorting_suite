require './bubble_sort'
require './insertion_sort'
require './merge_sort'

test_list = [0, 3, 8, 5, 4, 9, 22]

bubble = BubbleSort.new
insertion = InsertionSort.new
merge = MergeSort.new


def time_method(method=nil, *args)
  beginning_time = Time.now
  if block_given?
    yield
  else
    self.send(method, args)
  end
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end

time_method do
  bubble.sort(test_list)
end

time_method do
  insertion.sort(test_list)
end

time_method do
  merge.output(test_list)
end