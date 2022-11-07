{
  apiVersion: "layers.github.io/v1alpha1",
  kind: "Layer",
  metadata: {
    name: 'base',
  },
  spec: {
    local config = self.config,
    local resources = self.resources,
    config: {
      name: "hello-world",
      replicas: 1,
    },
    resources: {
      deployment+: {
        apiVersion: "v1",
        kind: "Deployment",
        metadata: {
          name: config.name,
        },
        spec: {
          local spec = self,
          replicas: config.replicas,
          selector: {
            matchLabels: spec.template.selectorLabels_,
          },
          template: {
            metadata: {
              selectorLabels_:: {
                app: config.name,
              },
              labels: self.selectorLabels_ + {

              },
            },
            spec: {
              containers_:: {
                primary: {
                  name: "app",
                  image: "nginx:1.14.2",
                  ports: [
                    {
                      containerPort: 80,
                    },
                  ]
                },
              },
            },
          },
        },
      },
    },
  },
}
