mkdir keycloak-controller
mkdir -p charts/auth/templates/crds
curl -L https://github.com/kiwigrid/keycloak-controller/tarball/2.0.0 | tar xz -C keycloak-controller --strip-components=1
cp keycloak-controller/src/main/k8s/*.yaml charts/auth/templates/crds