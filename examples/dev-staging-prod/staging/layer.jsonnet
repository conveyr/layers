{
  apiVersion: 'layers.github.io/v1alpha1',
  kind: 'Layer',
  metadata: {
    name: 'staging',
  },
  spec: {
    compose: [
      "../layer.libsonnet",
    ],
    config+: {
      replicas: 2,
    }
  },
}