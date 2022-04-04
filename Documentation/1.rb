#  Class and Instance Methods
  #  Locate the ruby documentation for methods File::path and File#path. How are they different?

  #  File::path  == Class Method
  #  File#path   == Instance Method

  puts File.path('bin')

  f = File.new('my-file.text')
  puts f.path