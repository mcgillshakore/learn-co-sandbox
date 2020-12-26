resident_array = ["tom", "jake", "adam", "max"]

resident_jobs ={
  "Tom" => "Entrepreneur",
  "Tim" => "Store Clerk",
  "Anthony" => "Museum Curator"
}

resident_jobs["Isabelle"] = "Residental Services"

puts resident_array.each { |i| i.capitalize}
puts resident_array.collect { |i| i.capitalize}
puts resident_array