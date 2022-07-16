puts "Enter a string"
input = gets.chomp

# Right shift
puts "Enter a shift factor"
shift_factor = gets.chomp.to_i

# validate shift_factor to be valid integer
while shift_factor == 0 
    puts "Enter a valid shift factor"
    shift_factor = gets.chomp.to_i
end

def caesar_cipher(string, shift_factor)
    p string
    p shift_factor
end

caesar_cipher(input, shift_factor)