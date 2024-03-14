terraform {
  required_version = ">= 1.3.9"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.56.0"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = "2.3.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  access_key = "ASIA47CRYCV63RD6WZ5M"
  secret_key = "zOYbtNPYiy+IaElUnzW4KzXxDBLNTxV5HXiy+Xe7"
  token = "FwoGZXIvYXdzEH4aDGUoeA6n8I/XpoLVZSK+AYkSJeTI4UYAKN6fnRdlaIxenQMkbylSWP+M4m9J9lkI4+VxbD+c4KH5LHvm0l6HseUlx2iuIeJDsCNyMfBfybxoFK/+Fux4qf+c+itb4fcb1hkCtDXSDhhlomGJoMJuXkWFokZHj8zg7l0Nb2xjEa9sxXHvjD3KKwkCm9QrjeEmw/35SNeJHK+j1cRbtx/d57SQDfJb3p/nvQknUJZQEl7ivIcBLGYtmHPWZiJ9tJK3irAedpP66ytYM144cvQop9nLrwYyLdW5KZCiQ4wlVGmfzcc1qxFYg9RuuPHHxsCT9fSXctBXuiWFWkXBOt7JLXI93g=="

  #profile = "vocareum"
}

provider "cloudinit" {
}

data "template_cloudinit_config" "config-onion" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.update-fstab
    content_type = "text/x-shellscript"
    content      = data.template_file.fstab.rendered
  }

  part {
    filename = var.cloud-config-onion
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-onion)
  }

  part {
    filename = var.config-onion
    content_type = "text/x-shellscript"
    content = file(var.config-onion)
  }

  part {
    filename = var.config-netplan
    content_type = "text/x-shellscript"
    content = file(var.config-netplan)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }
  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}

data "template_cloudinit_config" "config-kali" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.kali-change-password
    content_type = "text/x-shellscript"
    content      = data.template_file.kali-password.rendered
  }

  part {
    filename = var.cloud-config-kali
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-kali)
  }

  part {
    filename = var.config-kali
    content_type = "text/x-shellscript"
    content = file(var.config-kali)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }

  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}

data "template_cloudinit_config" "config-sift" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.sift-change-password
    content_type = "text/x-shellscript"
    content      = data.template_file.sift-password.rendered
  }

  part {
    filename = var.cloud-config-sift
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-sift)
  }

  part {
    filename = var.config-sift
    content_type = "text/x-shellscript"
    content = file(var.config-sift)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }

  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}

data "template_cloudinit_config" "config-remnux" {
  gzip = false
  base64_encode = false

  part {
    filename     = var.remnux-change-password
    content_type = "text/x-shellscript"
    content      = data.template_file.remnux-password.rendered
  }

  part {
    filename = var.cloud-config-remnux
    content_type = "text/x-shellscript"
    content = file(var.cloud-config-remnux)
  }

  part {
    filename = var.config-remnux
    content_type = "text/x-shellscript"
    content = file(var.config-remnux)
  }

  part {
    filename = var.config-NetworkMiner
    content_type = "text/x-shellscript"
    content = file(var.config-NetworkMiner)
  }

  part {
    filename = var.config-45-allow-colord
    content_type = "text/plain"
    content = file(var.config-45-allow-colord)
  }
}