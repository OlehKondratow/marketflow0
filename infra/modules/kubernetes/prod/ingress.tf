resource "helm_release" "ingress_nginx_prod" {
  name             = "ingress-nginx-prod"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress-prod"
  create_namespace = true

  set {
    name  = "controller.ingressClassResource.name"
    value = "nginx-prod"
  }

  set {
    name  = "controller.ingressClassResource.controllerValue"
    value = "k8s.io/ingress-nginx-prod"
  }

  set {
    name  = "controller.service.loadBalancerIP"
    value = var.prod_ingress_ip
  }

  set {
    name  = "controller.service.annotations.service\\.beta\\.kubernetes\\.io/azure-load-balancer-resource-group"
    value = var.resource_group_name
  }
}
