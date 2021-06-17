# create a secret for private docker registry:
Link:  https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/

kubectl create secret docker-registry regcred --docker-server=<your-registry-server> --docker-username=<your-name> --docker-password=<your-pword> --docker-email=<your-email>


then:

apiVersion: apps/v1
kind: Deployment
...
spec:
  ...
  template:
    spec:
      imagePullSecrets:
        - name: regcred
