class Book
# write your code here
	attr_accessor :title
	def title
		title_words = @title.split
		little_words = ["and", "or", "of", "over", "the", "in", "a", "an" ]
		title_words.each do |word|
			if word == title_words.first || !little_words.include?(word)
				word.capitalize!
			end
		end
		title_words.join(" ")
	end
end
