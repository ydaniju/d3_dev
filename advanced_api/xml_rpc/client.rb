require 'xmlrpc/client'

# Make an object to represent the XML-RPC server.
server = XMLRPC::Client.new('localhost', '/', 8080)

# Call the remote server and get our result
result1 = server.call('sample.sumAndDifference', 5, 3)

sum = result1['sum']
difference = result1['difference']

result2 = server.call('sample.multiplier', 5, 3)

puts "Sum: #{sum}, Difference: #{difference}"
puts "Multiplier: #{result2}"
