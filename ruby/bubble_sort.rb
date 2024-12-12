

def bubble_sort(arr)
  
  loop do
    swapped = false
(0..arr.length-2).each do |index|
  if(arr[index]>arr[index+1])
    temp=arr[index]
    arr[index]=arr[index+1]
    arr[index+1]=temp
    swapped = true
  end
end
if swapped == false
  break

end



  end
  return arr


end
arr = [5,3,6,0,-1]
p bubble_sort(arr)