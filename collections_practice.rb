def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return FALSE
    end
  end 
  return TRUE
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|x| x.slice(0..1) == 'wa'}
end

def remove_non_strings(array)
  array.select {|x| x.is_a? String}
end

def count_elements(array)
  array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool" 
  end
  container
end


def organize_schools(schools)
  new_hash = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if new_hash[location]
      new_hash[location] << name
    else
      new_hash[location] = []
      new_hash[location] << name
    end
  end
  new_hash
end

learn submit