class Word
  attr_accessor :possible_words, :word
  def initialize
    @possible_words = %w(apple monkey space star cloud plane pain window door house outdoors car wax clean happy sad angry therapy talk emotions yellow blue red green orange pool darts bear beer vodka tequila whisky glass ice food plate buffet menu china england germany italy pizza cheese grater cow goat pig horse farm song camp fire marshmellow tent pillow comfort bug spray mice rodents owl dapper tie bowtie suite dress spectacular gown jingoism mississippi portland fawn tawdry feign acumen cupidity ebullient exogitate equanimity parsimonious penultimate perfidiousness perspicacious proficuous saxicolous persnickity pavonine premium)
    index = Random.new
    @word = @possible_words[index.rand(0..88)]
  end
end



