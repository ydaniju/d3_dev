require 'xmlrpc/server'

s = XMLRPC::Server.new(8080)

s.add_handler('sample.sumAndDifference') do |a, b|
  { 'sum' => a * b, 'difference' => a - b }
end

s.add_handler('sample.multiplier') do |a, b|
  a * b
end

s.serve
