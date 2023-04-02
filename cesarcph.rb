def ceaser_cipher(text,shift)
    alphabet = ("a".."z").to_a
    text = text.downcase
    ciphere_text = ""

    text.each_char do |char|
        if !alphabet.include?(char)
            ciphere_text += char
        else
            index = alphabet.index(char)
            new_index = (index + shift) % alphabet.length
            ciphere_text += alphabet[new_index]
        end
    end
    return ciphere_text
end

#example of use 
puts ceaser_cipher("Hello world!", 6)