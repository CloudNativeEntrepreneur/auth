# auth

Installs keycloak configured with custom theme, wired up to use with keycloak-controller, and able to get secrets from jx/vault/helm integration

keycloak-controller is required to be running in the cluster with `namespaced: false`

## DB configuration

The database needs to be set up and configured before chart will start successfully.

Deploy patroni to env, then connect to it with:

```
kubectl run -i --tty --rm psql --image=postgres --restart=Never -- bash -il
psql -U postgres -h jx-patroni.jx-staging.svc.cluster.local
```

Enter the "superuser" password.

```
create database keycloak;
create user keycloak with encrypted password 'mypass' in role admin;
grant all privileges on database keycloak to keycloak;
```