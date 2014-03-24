# safer picture download
require 'pry'
def pic_download (source_folder, target_folder)
  Dir.chdir target_folder
  source_folder.concat('/') if !source_folder.match(/\/$/) 
  pic_names = Dir[source_folder + '*.jpg']

  puts 'What would you like to call this batch?'
  batch_name = gets.chomp

  print "\nDownloading #{pic_names.length} files\n"

  pic_number = 0

  pic_names.each do |name|
    print '.'

    new_name = "#{batch_name}#{format('02%d',pic_number)}.jpg"

    if !File.exist?(new_name)
      File.rename name,new_name 
    else
      # if there is an existing file, then quit.
      puts "\nError. You have a existing file.\n"
      exit
    end    
    binding.pry
    pic_number += 1
  end

  puts "\nDone!"

end

# build playlist
def playlist (folder)
  filename = 'playlist.m3u'

  folder.concat('/') if !folder.match(/\/$/) # so that /home -> /home/
  song_names = Dir[folder + '*.{mp3,m4a}'] 

  song_names.shuffle!

  File.open filename, 'w' do |f|
    song_names.each {|name| f.write name+"\n"}
  end
end


