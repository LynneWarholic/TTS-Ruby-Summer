inventory = {}
	inventory["pencils"] = "3"
	inventory["pens"] = "2"
	inventory["sticky_notes"] = "4"
	
puts ""
puts "Welcome to The Crazy Awesome Inventory App!"
puts ""

puts "Would you like to edit your inventory? (y/n)"
edit_yes = gets.chomp.upcase
while edit_yes == "Y"

puts ""
puts "What would you like to do?"
puts ""
puts "Enter L to list your inventory."
puts "Enter V to view the inventory of one item."
puts "Enter D to delete one item."
puts "Enter Q to change the quantity of one item."
puts "Enter N to change the name of one item."
puts "Enter A to add a new item."
puts "Enter E to exit the app."

user_selection = gets.chomp.upcase

  if user_selection == "L"
  	puts "Here is the list of your inventory."
  	puts ""
    inventory.each do |value, key|
	puts " #{key} #{value}"
    end

  elsif user_selection == "V"
  	puts "===>As a reminder, here are the items you have."
  	puts ""
  	puts inventory.keys
  	puts ""
  	puts "Enter the name of the item you'd like to view." 
  	item_view = gets.chomp
  	puts ""
  	puts "You have " + inventory[item_view] + " " + item_view + "."
  
  elsif user_selection == "D"
  	puts "===>As a reminder, here are the items you have."
  	puts ""
  	puts inventory.keys
  	puts ""
  	puts "Enter the name of the item you'd like to delete." 
  	item_delete = gets.chomp
  	inventory.delete(item_delete)
  	puts "That item has been deleted. Here is your remaining list of items."
  	puts ""
  	inventory.each do |value, key|
	puts " #{key} #{value}"
	end

  elsif user_selection == "Q"
	puts "===>As a reminder, here are the items you have."
  	puts ""
  	puts inventory.keys
  	puts ""
  	puts "Enter the name of the item that requires a change in quantity."
  	item_new_qty = gets.chomp
  	puts "Enter the new quantity."
  	qty_new_qty = gets.chomp
  	inventory[item_new_qty] = qty_new_qty
  	puts ""
  	puts "That item has been changed. Here is your new list of items."
  	puts ""
  	inventory.each do |value, key|
	puts " #{key} #{value}"
  	end

  elsif user_selection == "N"
  	puts "===>As a reminder, here are the items you have."
  	puts ""
  	puts inventory.keys
  	puts ""
  	puts "Enter the name of the item that requires a change."
  	name_old = gets.chomp
  	puts "Enter the new name of the item."
  	name_new = gets.chomp
  	inventory[name_new] = inventory.delete(name_old)
  	puts ""
  	puts "That item has been changed. Here is your new list of items."
  	puts ""
  	inventory.each do |value, key|
	puts " #{key} #{value}"
  	end

  elsif user_selection == "A"
  	puts "===>As a reminder, here are the items you have."
  	puts ""
  	puts inventory.keys
  	puts ""
  	puts "Enter the name of the item to add."
  	item_add = gets.chomp
  	puts "Enter the quantity of the new item."
  	quantity_add = gets.chomp
  	inventory[item_add] = quantity_add
  	puts ""
  	puts "That item has been changed. Here is your new list of items."
  	puts ""
  	inventory.each do |value, key|
	puts " #{key} #{value}"
  	end

  elsif user_selection == "E"
  	exit 0
  						
  end
end
