mqtt = require 'mqtt'

client = mqtt.createClient 1883, 'localhost'

client.subscribe 'presence'
client.publish 'presence', 'Hello mqtt'

client.on 'message', (topic, message) =>
  console.log message

client.end()
