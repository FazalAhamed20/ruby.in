class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids

  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    result=[]
    result.push(*each_wagons_id.shift(2))
    check=each_wagons_id.shift()
    
    p check
    answer= missing_wagons+each_wagons_id+result
    p answer.unshift(check)
  
    
  end

  def self.add_missing_stops(hash1,hash2={})
    
    hash1[:stops]=[]

    
    hash2.each_value{|value| hash1[:stops].push(value)}

    p hash1
    
    
  
  end

  def self.extend_route_information(route, more_route_information)
  
  end
end
LocomotiveEngineer.add_missing_stops({ from: 'Berlin', to: 'Hamburg' })