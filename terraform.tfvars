rg_name  = { app-team = "Modules-Infra"
             db-team = "Modules-DB"
}
location = "UK West"
vnet_name = "Module-devops"
address_space = [ "10.1.1.0/24" ]
subnet_name = "devops-module-infra"
address_prefixes = ["10.1.1.0/26"]
publicip_names = "devops-modules"