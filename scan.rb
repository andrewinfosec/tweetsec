#
# TCP port scanner in < 140 characters by https://andrewinfosec.com
#
# $ gem install eventmachine
# $ sudo ulimit -n 1025  # required on OS X; also reduce the value 1024 below if necessary.
# $ ruby ./scan.rb 10.0.1.1
# 53
#
# --
#
# require 'rubygems'
# require 'eventmachine'
#
# EM.run {
#   (1..1024).each {|p|
#     c = EM::Protocols::TcpConnectTester.test(ARGV[0], p)
#     c.callback{p p}
#   }
# }
#
require'rubygems';require'eventmachine';EM.run{(1..1024).each{|p|c=EM::Protocols::TcpConnectTester.test(ARGV[0],p);c.callback{p p}}}
