require 'pry'

def bubble_sort(list)
	list_size = list.length

	swapped = true

	while swapped do
		swapped = false
		(list_size-2).times do |i|
			if(list[i] > list[i+1])
				list[i], list[i+1] = list[i+1], list[i]
				swapped = true
			end
		end
		break if(!swapped)
	end
	puts "Sorted list: #{list}"
end

test = [0, 3, 8, 5, 4, 9, 22]
bubble_sort(test)