def merge(left_sorted, right_sorted)
	res= []
	l=0
	r=0
	loop do
		break if r>= right_sorted.length and l>= left_sorted.length
		if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
			res << left_sorted[l]
			l += 1
		else
			res << right_sorted[r]
			r +=1
		end
	end
	return res
end
def merge_iter(arr)
	return arr if arr.size <=1
	mid = arr.length/2 -1
	left_sorted = merge_iter(arr[0..mid])
	right_sorted = merge_iter(arr[mid+1..-1])
	return merge(left_sorted, right_sorted) 
end
def merge_sort(arr)
	return merge_iter(arr)
end
arr = [1,5,2,6,3,6,32,1,34,40]
puts merge_sort(arr).join(' ')
