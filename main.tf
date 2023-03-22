
module "Demo" {

  source = "./Module"

  count     = 2
  base_name = "Loadbalancer987${count.index}"


}