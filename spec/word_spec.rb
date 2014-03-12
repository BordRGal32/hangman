require 'rspec'
require 'word'

describe Word do
  it'initializes an instance of word' do
    test_word = Word.new
    test_word.should be_an_instance_of Word
  end
end
