require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if 
    self.sentence? || self.question? || self.exclamation?
    sentences = self.split(/[?!.]/)
      if 
        sentences.include?("")
        sentences.pop
      end    
    sentences.length
    else
    return 0
    end
  end

end