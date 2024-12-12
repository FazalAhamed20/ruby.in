module Chess
  RANKS=1..8
 FILES="A".."H"
 # TODO: define the 'FILES' constant

 def self.valid_square?(rank, file)
    RANKS.to_a.include?(rank) && FILES.to_a.include?(file)
  
 end

 def self.nick_name(first_name, last_name)
   first_name[0,2].upcase + last_name[last_name.length-2,last_name.length].upcase
  
 end

 def self.move_message(first_name, last_name, square)
   nickname=first_name[0,2].upcase + last_name[last_name.length-2,last_name.length].upcase
   range=square.split("")
   p range
   p FILES.include?(range[0])
   p ANKS.include?(range[1])
   if FILES.include?(range[0]) && RANKS.include?(range[1])
     return "#{nickname} moved to #{square}"
   else
     return "#{nickname} attempted to move to #{square}, but that is not a valid square"

   end
 end
end

p Chess.move_message("John", "Doe", "A2")