{
  apiVersion: 'layers.github.io/v1alpha1',
  kind: 'Layer',
  metadata: {
    name: 'dev',
  },
  spec: {
    compose: [
      "../layer.libsonnet",
    ],
  },
}