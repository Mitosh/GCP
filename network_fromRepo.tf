module "network" {
  source  = "terraform-google-modules/network/google"
  version = "3.4.0"
    network_name = "terraform-vpc"
    routing_mode = "GLOBAL"
  subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-central1"
        }
    ]

}



# Create the mynetwork network
resource google_compute_network "mynetwork" {
name = "mynetwork"
#RESOURCE properties go here
auto_create_subnetworks = "false"
}