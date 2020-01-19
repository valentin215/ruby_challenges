class Acronym
  def self.abbreviate(word)
     word.split().map { |word| word[0] if word[0] =~ /[A-Za-z]/ }.join.upcase
  end
end
