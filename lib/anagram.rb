require('pry')
class Anagram
  def word_check(word1, word2)
    counter = 0
    word1 = word1.split("")
    word1.each do |letter|
      if(word2.include? letter)
        counter +=1
      end
    end
    if (counter == word2.length())
      return true
    else
      return false
    end
  end
end
