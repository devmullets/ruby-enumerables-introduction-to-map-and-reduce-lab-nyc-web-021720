# My Code here....
def map_to_negativize (source)
  index = 0 
  negative_array=[]
   while index < source.length do
     negative_array << (source[index] - (source[index] * 2))
     index += 1
    end 
  negative_array
end

def map_to_no_change (source)
  source
end

def map_to_double ( source_array )
  index = 0 
  double_array = []
    while index < source_array.length do
      double_array << (source_array[index] * 2)
      index += 1 
    end
  double_array
end 

def map_to_square ( source )
  squared_array = []
  index = 0 
    while index < source.length do 
      squared_array << ( source[index] * source[index] )
      index += 1 
    end 
  squared_array
end 

def reduce_to_total (source_array, starting_points = 0)
  if starting_points != nil 
    total = 0 
  else 
    total = source_array[starting_points]
  end   
    
  if starting_points > source_array.length 
    index = 0 
    total = starting_points
  else   
    index = starting_points
  end 
  
  while index < source_array.length do
    total += source_array[index]
    index += 1 
  end 
   total 
end

def reduce_to_all_true(source_array)
  index = 0
  while index < source_array.length do
    if !source_array[index]
      return false
    end
    index += 1
  end
 return true
end

def reduce_to_any_true ( source_array )
  
  index = 0 
  while index < source_array.length do 
    if source_array[index]
      return true 
      index += 1 
    end 
  end 
  return false
end   