require 'rss'

rss = RSS::Parser.parse('http://chalkle.com/feed/')

item = rss.items

i = 0
for i in 0...5
  puts item[i].title
  puts item[i].link
  i += 1
end

