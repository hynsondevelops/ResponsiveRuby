def responsive(fileToConvert)
	f = File.open(fileToConvert, "r") 
	contents = f.read
	f.close
	f = File.open(fileToConvert, "w") 

	for i in 1..12
		replaceString = "col-xs-#{i} col-sm-#{i} col-md-#{i} col-lg-#{i}"
		contents.gsub! "col-md-#{i}", replaceString

	end
	f.write(contents)
	f.close
	print(contents)

end




responsive(ARGV[0])