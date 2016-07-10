class Book
	attr_reader :title

	def title=(string)
		array = string.split
		length = array.size
		x = 0
		output = ''
		
		while x < length
			word = array[x]
			if x == 0
				word.capitalize!
				output = [output, word].join(" ").strip
			elsif word == "the" || word == "and" || word == "an" || word == "of" || word == "in" || word == "a"
				output = [output, word].join(" ").strip
			else
				word.capitalize!
				output = [output, word].join(" ").strip
			end

			@title = output
			x = x + 1
		end
	puts @title
	end
end

book = Book.new
book.title = "war and peace"
book.title