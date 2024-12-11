class Attendee
  def initialize(height)
   
    @height=height
    @pass_id=nil
    
  end

  def height
  
    @height
  end

  def pass_id
    
    @pass_id
  end

  def issue_pass!(pass_id)
  
    @pass_id=pass_id 
  end

  def revoke_pass!
    
    nil
  end
end

height = 100
attendee = Attendee.new(height)
pass_id = 1
p attendee.issue_pass!(pass_id)
p attendee.revoke_pass!
p attendee.pass_id