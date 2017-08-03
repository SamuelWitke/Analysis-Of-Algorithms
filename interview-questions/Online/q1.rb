# @param {String} 
# @return {Boolean}
def is_valid(s)
	hash = { "(" => ")", "{" => "}", "[" => "]" }
	stack = []
	s.each_char do |x|
		stack.push(x) if hash.keys.include?(x) 
		stack.pop  if hash.values.include?(x) 
	end
	return stack.empty?
end
s='()[]{}'
puts is_valid(s)
