PHOTO_DIR = '/Users/scottsek/Desktop/PhotoWarehouse'
FILE_TYPE = 'JPG'
Dir.chdir PHOTO_DIR
#  First we find all of the pictures to be moved.
pic_names = Dir['/Users/scottsek/Desktop/20131215PhotoDropiPhone copy/**/*.'+FILE_TYPE]
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
# This will be our counter. We'll start at 1 today, # though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.#{FILE_TYPE}"
  else
  "#{batch_name}#{pic_number}.#{FILE_TYPE}"
  end
  if File.exist?(PHOTO_DIR+'/'+new_name) then
    puts
    puts "#{new_name} already exists in #{PHOTO_DIR}"
    puts "Please check directory before continuing...Progam exiting"
    exit
  else
    File.rename name, new_name
    #  Finally, we increment the counter.
    pic_number = pic_number + 1
  end
end
puts # This is so we aren't on progress bar line. puts 'Done, cutie!'