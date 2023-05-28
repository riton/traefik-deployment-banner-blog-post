## Why ?

Almost ready to use docker stacks inspired by the keycloak service

Ready for modifications and to play with


##  URLs

### traefik

* http://traefik-dashboard.127.0.0.1.nip.io/traefik/dashboard/
* http://traefik-metrics.127.0.0.1.nip.io:8090/traefik/metrics

### whoami

* http://whoami.127.0.0.1.nip.io

## Benchmarking

```
$ bombardier --duration=20s --http1 --latencies --connections=10 http://whoami.127.0.0.1.nip.io/
[==============================================================================================] 20s
Done!
Statistics        Avg      Stdev        Max
  Reqs/sec      3737.31    1285.15    8010.29
  Latency        2.67ms    23.87ms      2.00s
  Latency Distribution
     50%     1.96ms
     75%     2.90ms
     90%     4.16ms
     95%     5.23ms
     99%     8.36ms
  HTTP codes:
    1xx - 0, 2xx - 74684, 3xx - 0, 4xx - 0, 5xx - 3
    others - 10
  Errors:
    Get "http://whoami.127.0.0.1.nip.io:80/": context deadline exceeded (Client.Timeout exceeded while awaiting headers) - 10
  Throughput:     2.68MB/s
```
