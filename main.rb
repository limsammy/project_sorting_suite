require './bubble_sort'
require './insertion_sort'
require './merge_sort'

test_list = [0, 3, 8, 5, 4, 9, 22]

bubble = BubbleSort.new
insertion = InsertionSort.new
merge = MergeSort.new

bubble.sort(test_list)
insertion.sort(test_list)
merge.sort(test_list)