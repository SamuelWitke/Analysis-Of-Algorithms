#  You are given an array with integers (both positive and negative) in any random order. Find the sub-array with the largest sum.
def max_sub_arr(a)
	first,last,tmp=0,0,0
	sum,max=0,0
	a.each_with_index do |val,i|
		sum += val
		if(sum > max)
			max = sum
			first=tmp
			last=i
		end
		if(sum < 0)
			sum =0
			tmp= i+1
		end
	end	
	return first,last
end
arr = [2,-1,3,-5,4,-2,8]
puts arr.join(' ')
range=max_sub_arr(arr)
puts arr[range[0]..range[-1]].join(' ')
