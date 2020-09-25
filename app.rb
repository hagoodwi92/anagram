#!/usr/bin/ruby
require('./lib/anagram')

puts "Enter 1st word to compare:"
word1 = gets.chomp
puts "Enter 2nd word to compare:"
word2 = gets.chomp

words = Anagram.new()
#words = words.spaces(word1, word2)
puts words.word_check(word1, word2)

