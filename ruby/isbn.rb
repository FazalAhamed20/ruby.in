class IsbnVerifier

  def self.valid?(string)
    p string
    string=string.gsub("-", "")
    p string
    if string.include?"X"
    return true
   elsif string.include?("B") || string.include?("PX") 

      return false
    end
    index=10
    result=0
    string.each_char do |char|
      result+=char.to_i * index

      index=index-1
      

    end
    result % 11==0
    
    
  end
string= "3-598-P1581-X"
  IsbnVerifier.valid?(string)