require 'streamio-ffmpeg'

video = 'video-file-name'

movie = FFMPEG::Movie.new("reach/#{video}")

print 'Video : '
puts video
print "Size : "
puts movie.size
print "Resolution : "
puts movie.resolution

puts '============================================'
`ffmpeg -i 'path/#{video}' -vf scale=#{movie.width/2}:-2 'path/compress/#{video}'`
puts '============================================'
