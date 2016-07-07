def translate(string)
	array = string.split
	length = array.size
	x = 0
	output = ""

	while x < length
		word = array[x] 
		a = word[0]
		b = word[1]
		c = word[2]

		if a.include?("a") || a.include?("e") || a.include?("i") || a.include?("o") || a.include?("u")
			string = word + "ay"
			#puts 1

		elsif (a + b == 'qu')
			temp = a + b
			word.gsub!(temp, "")
			string = word + a + b + "ay"

		elsif a.include?("a") || a.include?("e") || a.include?("i") || a.include?("o") || a.include?("u") != true && (b + c == 'qu')
			temp = a + b + c
			word.gsub!(temp, "")
			string = word + a + b + c + "ay"

		elsif (b.include?("a") || b.include?("e") || b.include?("i") || b.include?("o") || b.include?("u")) != true && (c.include?("a") || c.include?("e") || c.include?("i") || c.include?("o") || c.include?("u")) != true
			temp = a + b + c
			word.gsub!(temp, "")
			string = word + a + b + c + "ay"
			puts 3

		elsif (b.include?("a") || b.include?("e") || b.include?("i") || b.include?("o") || b.include?("u")) != true
			temp = a + b
			word.gsub!(temp, "")
			string = word + a + b + "ay"
			puts 2

		else
    		word.slice!(0)
    		string = word + a + "ay"
    		puts 4
		end

		x = x + 1
		output = [output, string].join(" ").strip
	end
	output
end

translate("cherry")