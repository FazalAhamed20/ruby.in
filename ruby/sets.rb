require "set"

reason = Set.new(["Fall","Spring","Fall","Monsoon","Spring"])

reason.add("Rainy")
reason.delete("Fall")

puts reason