

Topology:
- stripes do work and publish to the cache every 10 seconds
- cache joins the data and publishes it to the client every 30 seconds
- client just receives data

In this toy example, messages queue up in the cache and are seldom sent to the client.
The cache prioritizes incoming messages over draining the outgoing queue.

```
q cache.q
q client.q
q stripe.q 0

for i in {1..13}; do q stripe.q ${i} > /tmp/stripes.log 2>&1 & done
```
