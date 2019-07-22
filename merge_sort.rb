def merge_sort(n)
	return n if n.length == 1
	last_index = n.length-1
	half = last_index/2
	left = merge_sort(n[0..half])
	right = merge_sort(n[half+1..last_index])
	puts "Left:#{left.inspect} Right:#{right.inspect}"
	merges(left, right)
end

def merges(left, right)
	return right if left.length == 0
	return left if right.length == 0
	if left.first < right.first
		[left.first] + merges(left[1..left.length-1], right)
	else
		[right.first] + merges(left, right[1..right.length-1])
	end
end
