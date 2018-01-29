class PhoneNumber
  def self.clean(num)
    if num.length == 9
        nil
    else  
    num.gsub(/[( )-.]/,'')
		end
  end    
end
