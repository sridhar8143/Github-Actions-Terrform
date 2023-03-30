
module "Demo" {

  source = "./Module"

  count     = 3
  base_name = "Loadbalancer987${count.index}"


}