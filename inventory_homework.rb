#DON'T USE THIS

my_hash = { pencils: "3", pens: "2", sticky_notes: "4"}

puts "Hello! Here is a list of your current inventory."

	my_hash.each do |value, key|
	puts " #{key} #{value}"
	end

	
puts "To view a single item, type the name of that item."
puts my_hash[:pencils]

