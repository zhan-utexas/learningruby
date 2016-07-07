def simon_says
end

def echo (x)
	x
end

def shout (x)
	x.upcase
end

def repeat (word, x=2)
	([word] * x).join(" ")
end

def start_of_word (word, x)
	word[0..x-1]
end

def first_word (word)
	x = word.index(' ')
	word[0..x-1]
end

def titleize (input)
	array = input.split
	length = array.size
	x = 0
	output = ''
	

	while x < length
		word = array[x]
		if x = 0
			word.capitalize!
			output = [output, word].join(" ").strip
		elsif word == "and" || "over" || "the"
		    output = [output, word].join(" ").strip
		else
			word.capitalize!
			output = [output, word].join(" ").strip
		end
		x = x + 1
	end
	output
end
