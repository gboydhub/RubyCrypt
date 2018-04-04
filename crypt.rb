class String
    def Encrypt
        self.split("").collect{ |c|
            if(c == /^[a-z]$/)
                ((((c.ord-6)-'a'.ord)%26)+'a'.ord).chr
            end
        }
        lower = self.tr("a-z", "u-za-t")
        return lower.tr("A-Z", "U-ZA-T")
    end

    def Decrypt
        lower = self.tr("a-z", "g-za-f")
        return lower.tr("A-Z", "G-ZA-F")
    end
end

if(ARGV.length <= 0)
    abort("Need a string!")
end

ArgString = ARGV.join(" ")
puts ArgString


Encrypted = ArgString.Encrypt
Decrypted = ArgString.Decrypt

puts Encrypted
puts Decrypted