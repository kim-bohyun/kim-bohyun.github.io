puts "insert value"

a = gets.chomp.to_i

if a == 0
    puts "#{a} is zero"
elsif a % 2 == 1
    puts "#{a} is even"
else
    puts "#{a} is odd"
end