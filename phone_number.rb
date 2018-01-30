class PhoneNumber

	def self.clean(number)
		
		if nine_eleven_not_starting_with_one?(number) 
			nil 
		elsif eleven_start_with_one?(number)
			number[1..-1]			
		elsif punctuation?(number)
			cleaned = number.gsub(/[[:punct:] ]/ ,'')
			cleaned[1..-1]
		else
			number.gsub(/[[:punct:] ]/ ,'')
		end
	end

	def self.nine_eleven_not_starting_with_one?(number)
		number.length == 9 || (number.length == 11 && number[0] != '1')
	end

	def self.eleven_start_with_one?(number)
		number.length == 11 || number.length == 11 && number[0] == '1' 
	end
			 
	def self.punctuation?(number)
		number.include?('+')
	end
end


