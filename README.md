## Why ?

Almost ready to use docker stacks inspired by the keycloak service

Ready for modifications and to play with


##  URLs

### traefik

* http://traefik-dashboard.127.0.0.1.nip.io/traefik/dashboard/
* http://traefik-metrics.127.0.0.1.nip.io:8090/traefik/metrics

### whoami

* http://whoami.127.0.0.1.nip.io

#### Customization

Stack deployment can be customized with `` variable:

Example:

```
$ DEPLOYMENT_NAME="-foo" docker stack deploy --compose-file ./whoami-stack.yml foo
```

and you can access it at http://whoami-foo.127.0.0.1.nip.io
