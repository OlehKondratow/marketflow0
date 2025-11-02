resource "helm_release" "ingress_nginx_prod" {
  name       = "ingress-nginx-prod"
  namespace  = "ingress-prod"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.10.0"

  values = [
    yamlencode({
      controller = {
        replicaCount = 1
        service = {
          type = "LoadBalancer"
          loadBalancerIP = var.prod_ingress_ip
        }
        ingressClassResource = {
          name = "nginx-prod"
        }
      }
    })
  ]
}
