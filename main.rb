
def caesar_cipher(text, factor) 

  shifted = ""

  original = text.bytes

  original.each do |ch|
    if ch >= 65 && ch <= 90 
      shifted_ascii = ((ch - 65) + factor) % 26 + 65
    elsif ch >= 97 && ch <= 122
      shifted_ascii = ((ch - 97) + factor) % 26 + 97
    else 
      shifted_ascii = ch
    end
    shifted += shifted_ascii.chr
  end

  shifted
  
end

text = ""
factor = 0

puts "Enter plaintext: "
text = gets.chomp
puts "Enter factor: "
factor = gets.to_i

puts caesar_cipher(text, factor)