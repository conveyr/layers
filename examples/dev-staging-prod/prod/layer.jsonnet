{
  apiVersion: 'layers.github.io/v1alpha1',
  kind: 'Layer',
  metadata: {
    name: 'prod',
  },
  spec: {
    compose: [
      "../layer.libsonnet",
    ],
    config+: {
      replicas: 3,
    }
  },
}