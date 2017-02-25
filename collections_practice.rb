def begins_with_r(arr)
  arr.each { |str| return false unless str[0] == "r" }
  true
end

def contain_a(arr)
  arr.select { |str| str.include?("a") }
end

def first_wa(arr)
  arr.find { |word| (word[0..1]) == "wa" }
end

def remove_non_strings(arr)
  arr.select { |el| el.is_a?(String) }
end

def count_elements(arr)
  result = []

  arr.uniq.each do |el|
    el.each_pair do |key, val|
      result << {:name => val, :count => arr.count(el)}
    end
  end

  result
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

def find_cool(arr)
  result = []

  arr.each do |el|
    result << el if el[:temperature] == "cool"
  end

  result
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
