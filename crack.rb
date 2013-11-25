#
# Unix password cracker in < 140 characters by http://andrewinfosec.com
#
# $ sudo ruby ./crack.rb < /etc/shadow
# "root"
# "birthday"
#
# --
#
# ARGF.each {|l|
#   u,c = l.split(/:/)[0..1]
#   IO.read('/usr/dict/words').each {|w|
#     w.chomp!
#     p u,w if w.crypt(c[0..1]) == c
#   }
# }
#
ARGF.each{|l|u,c=l.split(/:/)[0..1];IO.read('/usr/dict/words').each{|w|w.chomp!;p u,w if w.crypt(c[0..1])==c}}
