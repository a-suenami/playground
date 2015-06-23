require 'elasticsearch'

client = Elasticsearch::Client.new log: true

client.index  index: 'myindex', type: 'mytype', id: 1, body: { title: 'Test1' }
client.index  index: 'myindex', type: 'mytype', id: 2, body: { title: 'Test2' }
client.index  index: 'myindex', type: 'mytype', id: 3, body: { title: 'Test3' }
client.index  index: 'myindex', type: 'mytype', id: 4, body: { title: 'Test4' }

client.search index: 'myindex'
