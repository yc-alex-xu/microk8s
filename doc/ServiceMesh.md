使用 Service Mesh 并不是说与 Kubernetes 决裂，而是水到渠成的事情。
* Kubernetes 的本质是应用的生命周期管理，具体来说就是部署和管理（扩缩容、自动恢复、发布）。Kubernetes 为微服务提供了可扩展、高弹性的部署和管理平台。
* Service Mesh 的基础是透明代理，通过 sidecar proxy 拦截到微服务间流量后再通过控制平面配置管理微服务的行为。Service Mesh 将流量管理从 Kubernetes 中解耦，Service Mesh 内部的流量无需 kube-proxy 组件的支持，通过为更接近微服务应用层的抽象，管理服务间的流量、安全性和可观察性。
* Envoy 创造的 xDS 协议 xDS 定义了 Service Mesh 配置的协议标准。Service Mesh 是对 Kubernetes 中的 service 更上层的抽象，它的下一步是 serverless。


如果说 Kubernetes 管理的对象是 Pod，那么 Service Mesh 中管理的对象就是一个个 Service，所以说使用 Kubernetes 管理微服务后再应用 Service Mesh 就是水到渠成了，如果连 Service 你也不想管了，那就用如 knative 这样的 serverless 平台，但这就是后话了。

