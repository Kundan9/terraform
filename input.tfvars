resource_group_name = "rg-tpd-eu-w"
  #Name of the resource group.
location = "germanywestcentral"
# ----------- ACR variable input ------------
acrname = "acrsharedtpcoregwc01"
 # Provide container registry name.
acrrgname = "rg-tpd-eu-w"
  #Provide log analytics workspace name for the cluster
# ------------ Log Analytics workspace -------------
laworkspacename = "law-aks-d-gwc-01"
log_analytics_workspace_region = "westeurope"
  #provide the log analytics workspace name.
# ----------- Service Principal -------------
aksspcliensecrete = "abcd1234"
  #Provide service principal secrete for aks cluster
aksspclientid = "abc"
  #Provide service principal id for aks cluster.
# ---------- AKS cluster variable input -------------
akscluster_name = "aks-tpcore-d-gwc-01"
  #Provide aks cluster name
private_cluster = true
use_resource_group_name = true
 #To enable the private or public cluster.
kubernetes_version = "1.17.11"
dns_servers = ["168.63.129.16"]
dnsServiceIP = "10.0.0.10"
  # Provide dnsServiceIP for the cluster
dns_prefix = "tp-aks-d-gwc"
  #Provide dnsprefix
dockerBridgeCidr = "172.17.0.1/16"
  #Provide dockerBridgeCidr for the cluster
serviceCidr = "10.0.0.0/16"
  #Provide serviceCidr for the cluster
default_node_pool = {
  name                           = "ptpcoredpool"     #String type
  node_count                     = 1                  #number type
  vm_size                        = "Standard_B2ms"    #String type
  os_disk_size_gb                = 128                #number type
  cluster_auto_scaling           = false              #bool type
  cluster_auto_scaling_min_count = null               #number type   - This should be set to null if the cluster autoscalling is set to false
  cluster_auto_scaling_max_count = null               #number type   - This should be set to null if the cluster autoscalling is set to false
}
additional_node_pools = {
  app01 = {
    name                           = "stpcoredpool"   #String type
    node_count                     = 1                #number type
    vm_size                        = "Standard_B2ms"  #String type
    os_disk_size_gb                = 128                #number type
    node_os                        = "Linux"          #String type
    cluster_auto_scaling           = false            #bool type
    cluster_auto_scaling_min_count = null             #number type   - This should be set to null if the cluster autoscalling is set to false
    cluster_auto_scaling_max_count = null             #number type   - This should be set to null if the cluster autoscalling is set to false
  }
}
#################################################
#-----Vnet Variables input-------------
#################################################
vnet_name = "vnet-aks-d-gwc-01"
  #Provide vnet name.
subnet_name = "snet-aks-d-gwc-01"
 #Provide aks cluster Subnet name
subnet_address_space = "10.240.0.0/16"
 #Provide aks cluster subnet IP range
vnet_address_space = ["10.0.0.0/8"]
 #Provide aks cluster vnet address space
#################################################
#  Tags variable input
#################################################
tags = {
  ApplicationName = "tpcore"
  Environment     = "dev"
  Region          = "GermanyWestCentral"
  Owner           = "tpcore.devops@think.com"
  Costcenter      = 100
  Purpose         = "Shared micro service deployment infra"  
}