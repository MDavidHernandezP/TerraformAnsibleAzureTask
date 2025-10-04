output "public_ips" {
  value = {
    control = azurerm_public_ip.pip["control"].ip_address
    node1   = azurerm_public_ip.pip["node1"].ip_address
    node2   = azurerm_public_ip.pip["node2"].ip_address
  }
}

output "ssh_config_example" {
  value = <<EOT
Host control
    HostName ${azurerm_public_ip.pip["control"].ip_address}
    User ${var.admin_username}
    IdentityFile ~/.ssh/id_rsa

Host node1
    HostName ${azurerm_public_ip.pip["node1"].ip_address}
    User ${var.admin_username}
    IdentityFile ~/.ssh/id_rsa

Host node2
    HostName ${azurerm_public_ip.pip["node2"].ip_address}
    User ${var.admin_username}
    IdentityFile ~/.ssh/id_rsa
EOT
}