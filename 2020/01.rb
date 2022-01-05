input = File.readlines("01.txt", chomp: true)

#using just a for loop
input.each_with_index do | value, i |
  input.each_with_index do | val, i |
    sum =  val.to_i + value.to_i
      if sum == 2020
        puts "sum = #{sum}"
        puts "part 1 answer: #{val.to_i * value.to_i }"
      end
  end
end

input.each_with_index do | value, i |
  input.each_with_index do | val, i |
    input.each_with_index do | v, i |
      sum =  val.to_i + value.to_i + v.to_i
      if sum == 2020
        puts "sum = #{sum}"
        puts "part 2 ans: #{val.to_i * value.to_i * v.to_i}"
      end
    end
  end
end


input = File.read("01.txt").split.map{|s| s.to_i}
#cleaner attempt not using for loops

def expenses(vals, input)
  #split array in to all possible combinations of doubles
  dub_array = input.combination(vals).to_a

  #find pairs that combine to get 2020
  pairs = dub_array.select { |val| val.reduce(:+) == 2020}

  #multiply the first pair to get final answer
  ans = pairs.first.reduce(:*)
  ans
end

puts" part 1:  #{expenses(2, input)}"
puts" part 2:  #{expenses(3, input)}"


