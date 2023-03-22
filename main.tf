
module "Demo" {

  source = "./Module"

  count     = 2
  base_name = "Loadbalancer123456${count.index}"


}