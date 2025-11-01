resource "kubernetes_namespace" "marketflow_dev" {
  metadata {
    name = "marketflow-dev"
    labels = {
      environment = "dev"
      project     = "marketflow"
    }
  }
}