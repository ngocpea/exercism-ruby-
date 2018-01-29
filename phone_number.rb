class PhoneNumber
  def self.clean(num)
    num.gsub(/[( )-]/,'')
  end    
end
