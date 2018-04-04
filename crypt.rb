class String
    def Encrypt
        return self.split("").collect{ |c|
            if(("a".."z").cover?(c))
                (((c.ord+20-'a'.ord)%26)+'a'.ord).chr
            elseif(c === /^[A-Z]$/)
                (((c.ord+20-'A'.ord)%26)+'A'.ord).chr
            else
                c
            end
        }.join("")
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
Decrypted = Encrypted.Decrypt

puts Encrypted
puts Decrypted