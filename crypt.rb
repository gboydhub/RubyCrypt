class Crypt
    def Encrypt(String)
        lower = String.tr("a-z", "u-za-t")
        return lower.tr("A-Z", "U-ZA-T")
    end

    def Decrypt(String)
        lower = String.tr("a-z", "g-za-f")
        return lower.tr("A-Z", "G-ZA-F")
    end
end

TestObj = Crypt.new
TestString = "Be sure to drink your Ovaltine"

Encrypted = TestObj.Encrypt(TestString)
Decrypted = TestObj.Decrypt(Encrypted)

puts Encrypted
puts Decrypted