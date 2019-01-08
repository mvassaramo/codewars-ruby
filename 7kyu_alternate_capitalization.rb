# Given a string, capitalize the letters that occupy even indexes and odd indexes separately, and return as shown below. Index 0 will be considered even.

# For example, capitalize("abcdef") = ['AbCdEf', 'aBcDeF']. See test cases for more examples.

# The input will be a lowercase string with no spaces.



def capitalize(s)
    result = s.split("").each_with_index.map do |letter, index|
        index % 2 == 0 ? letter.upcase : letter 
    end.join 
    [result, result.swapcase]
end