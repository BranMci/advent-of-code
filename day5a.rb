input = 'abcdei'
VOWELS = %w[a e i o u]

def enough_vowels?(str)
  VOWELS.map{ |x| str.count(x) }.reduce(:+) >= 3
end

def has_duplicate?(str)
  str_arr = str.split('')
  str_arr.each_index{ |x| return true if x > 0 && str_arr[x - 1] == str_arr[x] }
  false
end

def no_forbidden_strings?(str)
  str !~ /(ab|cd|pq|xy)/
end

enough_vowels?(input) && has_duplicate?(input) && no_forbidden_strings?(input)
