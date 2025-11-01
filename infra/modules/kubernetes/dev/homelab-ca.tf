###########################################################
# Local CA issuer + test certificate (self-signed)
###########################################################

# Secret c CA-ключом и сертификатом
resource "kubernetes_secret" "homelab_ca" {
  metadata {
    name      = "homelab-ca"
    namespace = "cert-manager"
  }

  type = "Opaque"

  data = {
    "ca.crt" = var.ca_crt_b64
    "ca.key" = var.ca_key_b64
  }
}

# ClusterIssuer, использующий этот Secret
resource "kubernetes_manifest" "homelab_ca_issuer" {
  manifest = {
    apiVersion = "cert-manager.io/v1"
    kind       = "ClusterIssuer"
    metadata = {
      name = "homelab-ca-issuer"
    }
    spec = {
      ca = {
        secretName = "homelab-ca"
      }
    }
  }
}

# Пример сертификата
resource "kubernetes_manifest" "test_cert" {
  manifest = {
    apiVersion = "cert-manager.io/v1"
    kind       = "Certificate"
    metadata = {
      name      = "test-cert"
      namespace = "test"
    }
    spec = {
      secretName  = "test-cert-tls"
      duration    = "2160h"
      renewBefore = "360h"
      subject = {
        organizations = ["MyOrg"]
      }
      commonName = "test-cert.dmz.home"
      dnsNames   = ["test-cert.dmz.home"]
      issuerRef = {
        name = "homelab-ca-issuer"
        kind = "ClusterIssuer"
      }
    }
  }

  depends_on = [kubernetes_manifest.homelab_ca_issuer]
}
