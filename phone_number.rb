class PhoneNumber
	def self.clean(number)
		cleaned_number = fix(number)
		cleaned_number = remove_country_code(cleaned_number)
		return if invalid_length?(cleaned_number)
		return if invalid_exchange_code?(cleaned_number)
		cleaned_number
	end
	
	#invalid_length method borrowed from another solution
	#made sense to do number.length != 10 rather than number.length = 9, 11, etc
	def self.invalid_length?(number)
		number.length != 10
	end

	def self.fix(number)
		#number.gsub(/[^0-9]/,'')
		number.gsub(/[[:punct:] ]/ ,'')
	end

	def self.remove_country_code(number)
		return number[1..-1] if number[0] == '1'
		number
	end

	def self.invalid_exchange_code?(number)
		('0'..'1').cover?(number[3])
	end
end