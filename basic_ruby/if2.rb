puts "insert price!"

price = gets.chomp.to_i

if price > 8000 && price < 10000
    puts "normal price"
elsif price < 8000 || price > 10000
    puts "suprising"
end