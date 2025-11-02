resource "kubernetes_namespace" "ingress_prod" {
  metadata {
    name = "ingress-prod"
  }
}

resource "helm_release" "ingress_nginx_prod" {
  name             = "ingress-nginx-prod"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = kubernetes_namespace.ingress_prod.metadata[0].name
  create_namespace = true
  timeout          = 900
  force_update     = true
  replace          = true

  values = [
    yamlencode({
      controller = {
        replicaCount = 1
        service = {
          type            = "LoadBalancer"
          loadBalancerIP  = var.prod_ingress_ip
        }
        ingressClassResource = {
          name = "nginx-prod"
        }
      }
    })
  ]

  depends_on = [kubernetes_namespace.ingress_prod]
}

