# https://flowdock.com/


token = "" # token = your Flowdock access token
organization = "" # organization = Flowdock subdomain
flow = "" # flow = name of flow in URL

$: << 'lib' << '../lib'

require 'ld-em-eventsource'

EM.run do
  source = EM::EventSource.new("https://#{token}:@stream.flowdock.com/flows/#{organization}/#{flow}",
                               {query: 'text/event-stream'},
                               {'Accept' => 'text/event-stream'})

  source.message do |message|
    puts "new message #{message}"
  end

  source.start
end
