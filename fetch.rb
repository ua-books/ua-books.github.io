require "fileutils"
require "open-uri"

url = <<-URL.strip
URL

path = URI.decode_www_form_component(url).sub("https://ua-books.com/", "")
FileUtils.mkdir_p(path)

File.write(File.join(path, "index.html"), URI.open(url).read)
