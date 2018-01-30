class PhoneNumber

	def self.clean(number)
		
		if nine_eleven_not_starting_with_one?(number)
			nil
		elsif eleven_start_with_one?(number)
			number[1..-1]	
		else
			cleaned = fix(number)
		end
	end

	def self.nine_eleven_not_starting_with_one?(number)
		number.length == 9 || (number.length == 11 && number[0] != '1')	
	end

	def self.eleven_start_with_one?(number)
		number.length == 11 && number[0] == '1' || /[[:punct:]]/.match(number) && number[0] == '1'
	end

	# def self.punctuation?(number)
	# 	/[[:punct:]]/.match(number) && number[0] == '1'
	# end


	def self.fix(number)
		number.gsub(/[( )-.+]/,'')
	end
end


