

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
paragraph_count = text.split(/\n\n/).size
total_characters = text.length
character_count = text.gsub(/\s+/, "").size
word_count = text.split.size
sentence_count = text.split(/\. |\?|!/).size

sentences = text.gsub(/\s+/, ' ').strip.split(/\.\s|\?|!\s/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = (sentences_sorted.length / 3)
ideal_sentences = sentences_sorted.slice(one_third,one_third+1)
ideal_sentence = ideal_sentences.select { |sentence| sentence =~ /is|are/}
ideal_summary = sentences.select {|sentence| (ideal_sentence.include?sentence)}

puts "There be #{line_count} lines, matey."
puts "#{total_characters} characters"
puts "#{character_count} real characters"
puts"#{word_count} words"
puts"#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts ideal_summary.join(". ")
