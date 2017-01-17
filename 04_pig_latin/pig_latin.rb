#write your code here
def translate sentence
	words = sentence.split
	new_words = []
	words.each do |word|
		pig_latin = ""
		length = word.length
		vowels = ["a", "e", "i","o","u"]
		special_phoneme = ["qu"]
		i = 0 
		
		#while the index of the word is not a vowel,
		#iterate thru the indexes
		while !vowels.include?(word[i]) || word[i] == "u"

			i = i+1
		end

		if i < 1
			pig_latin = "#{word}ay"
		else
			pig_latin = "#{word[i,length]}#{word[0,i]}ay"
		end
		new_words.push(pig_latin)
	end
	new_words.join(' ')
end