puts "Enter a string"
input = gets.chomp

# Right shift
puts "Enter a shift factor"
shift_factor = gets.chomp.to_i

# Validate shift_factor to be valid integer
while shift_factor == 0 
    puts "Enter a valid shift factor"
    shift_factor = gets.chomp.to_i
end

##
# For each character in the string, if it's a letter, shift it by the shift factor, and if it's not a
# letter, leave it alone
# 
# Args:
#   stringArr: an array of strings to be encrypted
#   shift_factor: the amount of letters to shift the string by
def caesar_cipher(stringArr, shift_factor)
    answer = []
    for i in 0..stringArr.length - 1

        value = stringArr[i].ord

        # Uppercase letter is between 65 and 90
        if 65 <= value && value <= 90

            value += shift_factor

            if value > 90
                value -= 26
            end

            value = value.chr

        # Lowercase letter is between 97 and 122
        elsif 97 <= value && value <= 122

            value += shift_factor

            if value > 122
                value -= 26
            end

            value = value.chr

        # Not a letter
        else
            value = value.chr
        end

        answer.push(value)
    end

    p answer.join("")
end

caesar_cipher(input.split(""), shift_factor)