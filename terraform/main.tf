terraform {
  required_providers {
      vault = {
        source = "hashicorp/vault"
        version = "3.10.0"  
      }
  }
}

provider "vault" {
  address = "http://127.0.0.2:8200"
  token   = "my-vault-root-token"
}


# resource "vault_okta_auth_backend" "example" {
#     description  = "Demonstration of the Terraform Okta auth backend"
#     base_url     = "okta.com"
#     organization = "dev-123456"
#     max_ttl      =  300 # update to trigger update-in-place
#     ttl          =  100

#     # token        = "some-token" #okta token

#     group {
#         group_name = "foo"
#         policies   = ["test", "default"]
#     }

#     user {
#         username = "bar"
#         groups   = ["foo"]
#     }

#     # Prevent updates to okta token:

#     lifecycle {
#       ignore_changes = [ token ] 
#     }
# }