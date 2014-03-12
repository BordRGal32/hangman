require 'rspec'
require 'game'
require 'word'

describe Game do
  it'initializes an instance of game with a random word' do
    test_game = Game.new
    test_game.should be_instance_of Game
  end
  describe "#letter_match" do
    it'pushes matched letters the empty array at the correct index' do
      test_game = Game.new
      test_game.letter_match("a")
      test_game.guessed_letters.should eq ["", "", "p", "p", "", "r"]
    end
  end
end
