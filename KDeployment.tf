resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    namespace = "default"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
}
}
