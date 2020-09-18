puts "Please enter your code:"
test_text = gets.chomp.to_s
puts "Please enter your number"
encryption_num = gets.chomp.to_i

def caesar_cipher(str, num)
  alphabet_hash = {" " => 0, "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, 
    "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17,
    "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26}
  capital_count = []
  str.scan(/[A-Z]/) do |c|
    capital_count << $~.offset(0) [0]
  end
  str_letters = str.downcase.split(//)
  str_num = []

  str_letters.map do |i|
    alphabet_hash.map do |k, v| 
      if k == i
        str_num.push(v)
      end
    end
  end

  encrypted_code = []
  str_num.map do |i|  
    i = i + num unless i == 0
    if i > 26 
      i = i - 26
    end
    alphabet_hash.map do |k, v| 
      if v == i
        encrypted_code.push(k)
      end
    end
  end

  encrypted_code = encrypted_code.map.each_with_index do |let, ind|
    if capital_count.include?(ind)
      let.upcase
    else
      let
    end
  end

  return encrypted_code.join
end

puts caesar_cipher(test_text, encryption_num)