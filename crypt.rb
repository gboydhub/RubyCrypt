class Crypt
    def Encrypt(str)
        lower = str.tr("a-z", "u-za-t")
        return lower.tr("A-Z", "U-ZA-T")
    end

    def Decrypt(str)
        lower = str.tr("a-z", "g-za-f")
        return lower.tr("A-Z", "G-ZA-F")
    end
end

if(ARGV.length <= 0)
    abort("Need a string!")
end

puts ARGV

TestObj = Crypt.new
TestString = "Be sure to drink your Ovaltine"

Encrypted = TestObj.Encrypt(TestString)
Decrypted = TestObj.Decrypt(Encrypted)

puts Encrypted
puts Decrypted