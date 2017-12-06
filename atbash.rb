# Atbash Cipher
class Atbash
  HASH = { 'A' => 'Z', 'B' => 'Y', 'C' => 'X', 'D' => 'W', 'E' => 'V',
           'F' => 'U', 'G' => 'T', 'H' => 'S', 'I' => 'R', 'J' => 'Q',
           'K' => 'P', 'L' => 'O', 'M' => 'N', 'N' => 'M', 'O' => 'L',
           'P' => 'K', 'Q' => 'J', 'R' => 'I', 'S' => 'H', 'T' => 'G',
           'U' => 'F', 'V' => 'E', 'W' => 'D', 'X' => 'C', 'Y' => 'B',
           'Z' => 'A' }.freeze

  def self.encode(string)
    str = string.gsub(/[\s,\.]/, '').downcase.chars
    result = []
    str.each do |chr|
      result << number?(chr)
    end
    str = result.reduce(:+).downcase
    slicing_size_5(str)
  end

  def self.number?(chr)
    chr.to_i.to_s == chr ? chr : HASH[chr.upcase]
  end

  def self.slicing_size_5(str)
    result = ''
    loop do
      result << str.slice!(0, 5) + ' '
      break if str == ''
    end
    result.chop
  end
end
