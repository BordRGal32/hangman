require 'word'

class Game
  attr_reader :word, :guessed_letters, :target_letters

  @guess_counter = 0

  def initialize
    word_instance = Word.new
    @word = word_instance.word
    @target_letters = @word.split("")
    @guessed_letters = [""]
    @guessed_letters = @guessed_letters.cycle.take @word.length
  end
  def letter_match(letter)
    @target_letters.each_with_index do |target_letter, index|
      if target_letter == letter
        @guessed_letters[index] = letter
      end
    end
    @guess_counter += 1
  end
  def win
    if @target_letters.join == @guessed_letters.join
      'win'
    elsif @guess_counter > 5
      'loss'
    else
      'keep playing'
    end
  end
end
