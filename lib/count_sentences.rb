require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end
  
  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/[.?!]+/).length
  end
end

str1 = String.new("Hi.")
str2 = String.new("Hello")
str3 = String.new("one. two. three?")
str4 = String.new("")
str5 = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")

p str3.count_sentences
# p str4.count_sentences
p str5.count_sentences