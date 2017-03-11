=begin
CHALLENGE: 
Given an Integer 1234 convert it to an Array of strings. 
The final Array should have all the odd numbers have an hyphen in the begin of the number. 
For example in our case the output will be => ['-1', '2' '-3' '4']

Input => integer
Output => Array
Process =>
convert integer to string, string to array
map each element and check if it is an odd number. if true append hyphen at the beginning of element
=end

def intToArray num
	num.to_s.chars.map{|number| number.to_i.odd? ? '-' + number : number }
end

p intToArray 1234
