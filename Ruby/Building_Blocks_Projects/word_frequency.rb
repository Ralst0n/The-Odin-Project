#histogram of word frequency in a string. redundant, I know.
def word_count(str)
  str_arr = str.split(' ')
  word_total = {}
  str_arr.each do |word|
    if word_total.include?word
      word_total[word] +=1
    else
      word_total[word] = 1
    end
  end
  word_total
end
