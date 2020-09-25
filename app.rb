#!/usr/bin/ruby
require('./lib/anagram')

puts "Enter 1st word to compare:"
word1 = gets.chomp
puts "Enter 2nd word to compare:"
word2 = gets.chomp
words = Anagram.new(word1, word2)
#words.spaces()
puts words.word_check()

