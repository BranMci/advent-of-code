require 'digest'

input_key = 'iwrupvqb'
input_num = 0
result = ''

while result.slice(0, 5) != '00000' do
  input_num += 1
  result = Digest::MD5.hexdigest input_key + input_num.to_s
end

input_num

#= 346386
