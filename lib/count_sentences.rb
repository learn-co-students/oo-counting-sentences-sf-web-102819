require 'pry'

class String

  def sentence?
    if self[-1] == '.'
      return true
    else return false
    end
    
  end

  def question?
    if self[-1] == '?'
      return true
    else return false
    end
  end

  def exclamation?
    if self[-1] == '!'
      return true
    else return false
    end
  end

  def count_sentences
    count = 0
    flag = false
    self.each_char do |char| 
    if ((char == '.') || (char == '?') || (char == "!")) && flag == true
          flag = true
    else 
      flag = false
      if (char == '.') || (char == '?') || (char == "!")
        count += 1
        flag = true
      else
        flag = false
      end
    end
  end
    return count
  end

end