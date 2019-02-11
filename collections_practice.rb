def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
 array.find_all {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.class == String && word.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

def count_elements(array)
  array.uniq.each do |i|
    counter = 0
    array.each do |i2|
      if i2 == i
        counter += 1
      end
    end 
    i[:count]=counter
  end    
end

def merge_data(keys, data)
merged = []
  keys.each do |person|
  puts person
    data.first.map do |name,stats|
      if person.values[0] == name
        merged << person.merge(stats)
      end
    end  
  end
merged
end

def find_cool(cool)
  cool.select {|person| person.any? {|name,temp| temp == "cool"}}
end

def organize_schools(schools)
locations_hash = {}
  schools.collect do |school_s, city_s|
    locations_hash[city_s[:location]] = []
  end
  locations_hash.each do |city_l,school_l|
    schools.each do |school_s,city_s|
      if city_l == city_s[:location]
        school_l << school_s
      end 
    end
  end
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(cool)
  cool.select do |i|
    i.any? {|k,v| v == "cool"}
  end
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
