#Caesar Cipher

#take each letter
# if its a letter shift it by shift factor
#check for end of alphabet loops
#return shifted string

def caesar_cipher(str, shift_factor)
  code_box = []
  str.each_char do |char|
    #only runs these steps if helper function returns true
    if is_letter?(char)
      shift_byte = char.ord.+(shift_factor)
      while !(is_letter?(shift_byte.chr))
        shift_byte -=26
      end
      code_box<<shift_byte.chr
    else
      code_box<<char
    end
  end
  #turns the code_box array back into a string
  return code_box.join('')
end

#Created helper function to determine letterhood.
def is_letter?(n)
  # n =~ is equal to zero if n is a letter
  if ((n=~ /[[:alpha:]]/) == 0)
    return true
  else
    return false
  end
end
