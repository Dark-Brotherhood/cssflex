# file = IO.popen("gunzip -c index.html.gz")
# while text = file.gets do
#   print text
# end

require "zlib"

Zlib::GzipReader.open("index.html.gz"){|gz|
  while s = gz.gets
    puts s
  end
}