def caesar_cipher(string, int)
	new_phrase = []
	characters = string.split("")
	characters.each do |i|
		if /\s/.match(i) or (/\W/).match(i)
			new_phrase << i
			next
		end
		character_number = i.ord
		new_character_number = character_number + int
		if i == i.upcase
			if new_character_number > 90
				new_character_number = 64 + (new_character_number - 90)
			end
		else
			if new_character_number > 122
				new_character_number = 96 + (new_character_number - 122)
			end
		end
		new_character = new_character_number.chr
		new_phrase << new_character
	end
	new_phrase = new_phrase.join("")
	puts new_phrase
end