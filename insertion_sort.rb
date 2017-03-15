require 'pry'

class InsertionSort
	def sort(list)
		list_size = list.length
		swapped = true
		sorted_list = []

		while swapped do
			swapped = false
			(list_size-1).times do |i|
				sorted_list.unshift(list[i])
				binding.pry
			end
		end
	end
end

insertion = InsertionSort.new
insertion.sort([0, 3, 8, 5, 4, 9, 22])