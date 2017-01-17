#write your code here
def echo sentence
	sentence.to_s
end

def shout sentence
	sentence.to_s.upcase
end

def repeat sentence, number_of_times = 2
	repeated_sentence = ""
	number_of_times.times do
		repeated_sentence += (sentence + " ")
	end
	repeated_sentence.rstrip
end

def start_of_word word, number_of_letters
	letter_index = 0
	results = ""
	while letter_index < number_of_letters
		results += word[letter_index]
		letter_index += 1
	end

	results
end

def first_word sentence
	sentence.split.first
end

def titleize sentence
	capital_words = sentence.split
	little_words = ["and", "or", "of", "over", "the" ]
	capital_words.each do |word|
		if word == capital_words.first || little_words.include?(word) == false
			word.capitalize!
		end
	end
	new_sentence = capital_words.join(' ')
	new_sentence
	
end