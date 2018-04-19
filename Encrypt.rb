class Encrypt
  encryptKey = Hash["!","a",")","b","\"","c","(", "d", "£",
  "e","*", "f", "%", "g", "&", "h", ">", "i", "<", "j",
  "@", "k", "a", "l", "b", "m", "c","n", "d", "o", "e", "p",
  "f", "q", "g", "r", "h", "s", "i", "t", "j", "u", "k",
  "v", "l", "w", "m", "x", "o", "y", "p", "z", " ", " "]
  puts "Please insert a single line sting to encrypt:"
  stringToEncrypt = gets.chomp
  encryptedString = ""
  for i in 0..stringToEncrypt.length-1
    encryptedString += encryptKey.key(stringToEncrypt[i])
  end
  puts "The encrypted version of the input is:"
  puts encryptedString
  decrypted = ""
  for i in 0..encryptedString.length-1
    decrypted+=encryptKey[encryptedString[i]]
  end
  puts "Decrypted back to its original string"
  puts decrypted
end