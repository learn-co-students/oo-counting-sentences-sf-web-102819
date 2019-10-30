require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    #https://stackoverflow.com/questions/42216136/count-the-number-of-sentences-in-a-paragraph-using-ruby
    self.split(/[.?!]+/).count
  end
end