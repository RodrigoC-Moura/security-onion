variable "public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFh1jkFslJX98giELljvcn47MnJhjmTN5pLb2Zq/e0Z1KTJsA9HpGdHy6hIwUbYgmoJO+8do4Y+mveOFGtFIKUeZuOZH/VzyvNQuo9UX4N50pOtf+sOjBEYxBPss98IZJ4mNZZ2qIiL/LHIMfs/tpY1dcBflyafv8N5wTDodxpjOD/Z9bIwgII8zKPhI0CCPRLmeUnWoCUK8jBkvIVqDThzmYn7T81HNL/ki3pimZUjoqbdPMuhjsaGOaa5/lyMIDGH4sLQ58L7gzXYBe7RItQ4nw5K28c8o741pQNgrLlidjwr+qD2Dnqbrt0acQJizsj5Pgo9Aqe3426m7a5Muj1 ciberseguranca@nexus-desktop"
}

variable "avail_zone" {
  type = string
  default = "us-east-1a"
}

variable "vpc_ep_svc_name" {
  type = string
  default = "com.amazonaws.us-east-1.s3"
}

variable "config-NetworkMiner" {
  default = "NetworkMiner.desktop"
}

variable "config-45-allow-colord" {
  default = "45-allow-colord.sh"
}
