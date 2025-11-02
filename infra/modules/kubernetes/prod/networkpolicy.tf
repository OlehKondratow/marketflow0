resource "kubernetes_network_policy_v1" "deny_cross_ns" {
  metadata {
    name      = "deny-cross-namespace"
    namespace = kubernetes_namespace.marketflow_prod.metadata[0].name
  }

  spec {
    pod_selector {}

    policy_types = ["Ingress"]

    ingress {
      from {
        pod_selector {}
        namespace_selector {
          match_labels = {
            name = kubernetes_namespace.marketflow_prod.metadata[0].name
          }
        }
      }
    }
  }
}
