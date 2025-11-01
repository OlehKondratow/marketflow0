resource "kubernetes_namespace" "marketflow_dev" {
  metadata {
    name = "marketflow-dev"
    labels = {
      environment = "dev"
      project     = "marketflow"
    }
  }
}

resource "kubernetes_namespace" "test" {
  metadata {
    name = "test"
  }
}
