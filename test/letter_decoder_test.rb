# require 'SimpleCov'
# SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/letter_decoder.rb'

class LetterDecoderTest < Minitest::Test
  def test_it_decodes_easy_letters
    letter_decoder = ParaMorse::LetterDecoder.new
    letter_code_reference = {"a" => "10111",
      "b" => "111010101",
      "c" => "11101011101",
      "d" => "1110101",
      "e" => "1",
      "f" => "101011101",
      "g" => "111011101",
      "h" => "1010101",
      "i" => "101",
      "j" => "1011101110111",
      "k" => "111010111",
      "l" => "101110101",
      "m" => "1110111",
      "n" => "11101",
      "o" => "11101110111",
      "p" => "10111011101",
      "q" => "1110111010111",
      "r" => "1011101",
      "s" => "10101",
      "t" => "111",
      "u" => "1010111",
      "v" => "101010111",
      "w" => "101110111",
      "x" => "11101010111",
      "y" => "1110101110111",
      "z" => "11101110101",
      " " => "000000",

      "1" => "10111011101110111",
      "2" => "101011101110111",
      "3" => "1010101110111",
      "4" => "10101010111",
      "5" => "101010101",
      "6" => "11101010101",
      "7" => "1110111010101",
      "8" => "111011101110101",
      "9" => "11101110111011101",
      "0" => "1110111011101110111"}

    assert_equal "a", letter_decoder.decode('10111')
    assert_equal "q", letter_decoder.decode("1110111010111")
  end
end
