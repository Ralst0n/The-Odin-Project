#takes string as first argument
#takes dictionary as second argument
#list each substring from dictionary found in the original string
#and their frequency
#



def substrings(str, dictionary)
  frequencies = {}
  str.downcase!
  str_arr = str.split(' ')
  #iterate through each word in the  dictionary to see if it is a substring of any word in the string.
  dictionary.each do |substring|
    str_arr.each do |word|
      if word.include?substring
        if frequencies.include?substring
          frequencies[substring] +=1
        else
          frequencies[substring] = 1
        end
      end
    end
  end
    frequencies
end
