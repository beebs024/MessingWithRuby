class Encrypt
  encryptKey = Hash["!","a",")","b","\"","c","(", "d", "£",
  "e","*", "f", "%", "g", "&", "h", ">", "i", "<", "j",
  "@", "k", "a", "l", "b", "m", "c","n", "d", "o", "e", "p",
  "f", "q", "g", "r", "h", "s", "i", "t", "j", "u", "k",
  "v", "l", "w", "m", "x", "o", "y", "p", "z", " ", " "]
  encryptedString = "&> i&£g£" #hi there
  decrypted = ""
  for i in 0..encryptedString.length-1
    decrypted+=encryptKey[encryptedString[i]]
  end
  puts decrypted
end