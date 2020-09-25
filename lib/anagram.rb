require('pry')
class Anagram
  def initialize (word1, word2)
    @word1 = word1
    @word2 = word2
  end
  def word_check
    spaces()
    counter = 0
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    @word1 = @word1.split("")
    @word2 = @word2.split("")
    if ((check_if_word() == true))
    @word1.each do |letter1|
      @word2.each do |letter2|
        if (letter1 == letter2)
          counter += 1
        end
      end
    end
        if (counter == 0)
          return "Antigrams!"
        end 
      counter = 0
      notMatch = []
      @word1.each do |letter1|
        @word2.each do |letter2|
          if (letter1 == letter2)
            counter += 1
          end
        end
      end
      if ((@word1.length() == counter) & (@word2.length() == counter))
        return "Anagrams!"
      else
        return return_letters()
      end
    else
      return "Not a real word."
    end
  end
  def check_if_word
    if ((@word1.include? "a")| (@word1.include? "i") | (@word1.include? "e") | (@word1.include? "o") | (@word1.include? "u") | (@word1.include? "y"))
      result1 = true
    end
    if ((@word2.include? "a")| (@word2.include? "i") | (@word2.include? "e") | (@word2.include? "o") | (@word2.include? "u") | (@word2.include? "y"))
      result2 = true
    end

    if ((result1 == true) & (result2 == true))
      return true
    else
      return false
    end
  end
  def antigrams
    counter = 0
    @word1 = @word1.downcase
    @word2 = @word2.downcase
    @word1 = @word1.split("")
    @word2 = @word2.split("")
    @word1.each do |letter1|
      @word2.each do |letter2|
        if (letter1 == letter2)
          counter += 1
        end
      end
    end
    if (counter == 0)
      return "Antigrams!"
    else
      return false
    end  
  end
  def spaces
    @word1 = @word1.downcase
    @word1 = @word1.scan(/\w/i)
    @word1 = @word1.join("")
    @word2 = @word2.downcase
    @word2 = @word2.scan(/\w/i)
    @word2 = @word2.join("")

    return @word1, @word2
  end

  def return_letters
    match = []
    @word1.each do |letter1|
      @word2.each do |letter2|
        if((@word1.include? letter1) & (@word2.include? letter1) & (@word1.include? letter2) & (@word2.include? letter2))
          match.push(letter1)
        end
      end
    end
    match = match.uniq
    match = match.join(",")
    return "These words aren't anagrams but the following letter/s match: #{match}"
  end
end


