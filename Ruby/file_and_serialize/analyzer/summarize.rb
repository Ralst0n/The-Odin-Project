require_relative "analyzer.rb"

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
one_third = (sentences_sorted.length / 3)
ideal_sentences = sentences_sorted.slice(one_third,one_third+1)
ideal_sentence = ideal_sentences.select { |sentence| sentence =~ /is|are/}
puts ideal_sentence.join(". ")
