puts "Enter a string"
input = gets.chomp

# validate input

# Right shift
puts "Enter a shift factor"
shift_factor = gets.chomp

# validate shift_factor

def caesar_cipher(string, shift_factor)
    p string
    p shift_factor
end

caesar_cipher(input, shift_factor)