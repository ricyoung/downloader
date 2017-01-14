#book getter
#ric
require 'open-uri'
require 'domainatrix'

puts "open file"
#puts File.open('list-small.txt')
#current_file = []
current_file = open('list.txt')
puts "done  reading"

current_file.each {|i| puts "Need To Download: #{i}" 


book = i

url =  Domainatrix.parse(book)
puts "downloading - #{book}"
full = url.path.to_s
split = full.split('/')
name = split[4]
puts "name is #{name}"
download = open(i)
IO.copy_stream(download,name)
}

