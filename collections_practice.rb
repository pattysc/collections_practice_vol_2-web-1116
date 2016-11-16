# your code goes here
def begins_with_r(array)
  array.each do |x|
    if x.chars.first != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  new = []
  array.each do |x|
    if x.include? "a"
      new << x
    end
  end
  return new
end

def first_wa(array)
  array.each do |x|
    if x[0..1] == "wa"
      return x
    end
  end
end

def remove_non_strings(array)
  new = []
  array.each do |x|
    if x.class == String
      new << x
    end
  end
  return new
end

def count_elements(array)
  newarr = []
  	array.each do |hash|
  		if newarr.empty?
  			newarr << {:name => hash.fetch(:name), :count => 1}
  			puts newarr
  		else
  			i = 0
  			while i < newarr.length
  			puts hash
  				if newarr[i][:name] == hash[:name]
            puts "inside if"
  					newarr[i][:count] += 1

  				else
  					newarr << {:name => hash.fetch(:name), :count => 1}
  					puts "z"
            i += 1
  				end
          i += 1
  			end
  		end
  	end
  	return newarr
end

def merge_data(keys, data)
  merged = []
  keys.each do |name_hash|
  	temp = {}
  	name = name_hash[:first_name]
  	temp[:first_name] = name

  	data.each do |person_data|
  		temp = temp.merge(person_data[name])
  		merged << temp
  	end
  end
  return merged
end

def find_cool(array)
  retarr = []
  array.each do |x|
    if x[:temperature] == "cool"
      retarr << x
      return retarr
    end
  end
end

def organize_schools(schools)
	newhash = {}
  	schools.values.each do |x|
  		newhash[x[:location]] = []
	end

	schools.each do |schoolname, hashlocation|
		newhash[hashlocation[:location]] << schoolname
	end
  return newhash
end

# new_collection = []
# collection.each do |name_hash|
#   i = 0
#   name_found = false
#   while i < new_collection.length
#     if new_collection[i][:name] == name_hash[:name]
#       new_collection[i][:count] += 1
#       name_found = true
#       break
#     end
#     i += 1
#   end
#   unless name_found
#     new_collection << {:name => name_hash[:name], :count => 1}
#   end
# end
# new_collection
