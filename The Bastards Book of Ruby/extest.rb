# while 1
# 	puts "Enter a number >>"
# 	begin
# 		num = Kernel.gets.match(/\d+/)[0]
# 	rescue Exception => e
# 		puts "Erroneus input!"
# 		puts e
# 		puts "\tTry again...\n"
# 	else
# 		puts "#{num} + 1 is: #{num.to_i + 1}"
# 	end
# end

# require 'open-uri'
# require 'timeout'

# remote_base_url = "http://en.wikipedia.org/wiki"

# start_year = 1900
# end_year = 2000

# (start_year..end_year).each do |yr|
# 	begin
# 		rpage = open("#{remote_base_url}/#{yr}")
# 	rescue StandardError => e
# 		puts "Error: #{e}"
# 	else
# 		rdata = rpage.read
# 	ensure
# 		puts "sleeping"
# 		sleep 5
# 	end

# 	if rdata
# 		File.open("copy-of-#{yr}.html", "w") {|f| f.write(rdata)}
# 	end
# end

# for i in 'A'..'C'
# 	retries = 2
# 	begin
# 		puts "Executing command #{i}"
# 		raise "Exception: #{i}"
# 	rescue Exception => e
# 		puts "\tCaught: #{e}"
# 		if retries > 0
# 			puts "\tTrying #{retries} more times\n"
# 			retries -= 1
# 			sleep 2
# 			retry
# 		end
# 	end
# end

# require 'open-uri'
# remote_base_url = "http://en.wikipedia.org/wiki"

# [1900, 1910, 'xj3490', 2000].each do |yr|

# 	retries = 3

# 	begin
# 		url = "#{remote_base_url}/#{yr}"
# 		puts "Getting page #{url}"
# 		rpage = open(url)
# 	rescue StandardError => e
# 		puts "\tError: #{e}"
# 		if retries > 0
# 			puts "\tTrying #{retries} more times"
# 			retries -= 1
# 			sleep 1
# 			retry
# 		else
# 			puts "\t\tCan't get #{yr}, so moving on"
# 		end
# 	else
# 		puts "\tGot page for #{yr}"
# 	ensure
# 		puts "Ensure branch; sleeping"
# 		sleep 1

# 	end
# end

exceptions = []
tree = {}
ObjectSpace.each_object(Class) do |cls|
  next unless cls.ancestors.include? Exception
  next if exceptions.include? cls
  next if cls.superclass == SystemCallError # avoid dumping Errno's
  exceptions << cls
  cls.ancestors.delete_if {|e| [Object, Kernel].include? e }.reverse.inject(tree) {|memo,cls| memo[cls] ||= {}}
end

indent = 0
tree_printer = Proc.new do |t|
  t.keys.sort { |c1,c2| c1.name <=> c2.name }.each do |k|
    space = (' ' * indent); space ||= ''
    puts space + k.to_s
    indent += 2; tree_printer.call t[k]; indent -= 2
  end
end
tree_printer.call tree