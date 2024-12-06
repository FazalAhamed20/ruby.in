

my_file=File.open('novel.txt')

p my_file.class

my_file.each {|line| puts line}