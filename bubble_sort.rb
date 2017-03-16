class BubbleSort
	def sort(list)
		list_size = list.length

		swapped = true

		while swapped do
			swapped = false
			(list_size-1).times do |i|
				if list[i] > list[i+1]
					list[i], list[i+1] = list[i+1], list[i]
					swapped = true
				end
			end
			break if !swapped
		end
		puts "Sorted list (bubble): #{list}"
	end
end