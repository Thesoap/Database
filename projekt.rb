require 'gdbm'

gdbm = GDBM.new("Data.db")
hash = {}
gdbm.each_pair do |key, value|
	hash[key] = value
end
gdbm.close
puts "hello and welcome"
while true do
	puts "press put for save data and press get to search for data"
	user_input = gets.chomp
	case user_input
	when "put"
		puts "Input your key"
		key = gets.chomp
		puts "Input your value"
		value = gets.chomp
		hash[key] = value
		gdbm = GDBM.open("Data.db")
		gdbm[key] = value
		gdbm.close
		puts ""
		puts "The data is now saved"
		puts ""
	when "get"
		puts "Input your key to search for data"
		search_key = gets.chomp
		puts ""
		puts "Your data:"
		puts "#{hash[search_key]}"
		puts ""
	when "all"
		hash.each do |key,value|
			puts "#{key}: #{value}"
		end
		puts ""
	end
end
