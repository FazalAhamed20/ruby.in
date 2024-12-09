class PhoneNumber

  def self.clean(str)
    str=str.gsub(/[^0-9]/, '')
    p str
    if str.length<=9 || str.length >=11
      return nil

    end
    return true
    

  end

end
p PhoneNumber.clean("(223) 456-7890")