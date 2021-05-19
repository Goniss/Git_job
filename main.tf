terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "1.15.0"
    }
  }
}

provider "vsphere" {

  user = "root"
  password = "admin1234"
  vsphere_server = "192.168.202.128" 
  allow_unverified_ssl = true

}

data "vsphere_datacenter" "dc" {
  name = "vSAN Datacenter"
}

data "vsphere_resource_pool" "pool" {
  name = "vSAN Cluster/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id 
}

data "vsphere_datastore" "datastore1" {
  name = "datastore1"
  datacenter_id = data.vsphere_datacenter.dc.id 
  
}

data "vsphere_virtual_machine" "template" {
name = "template"
datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name = "VM Network"
  datacenter_id = data.vsphere_datacenter.dc.id 
}

resource "vsphere_virtual_machine" "ubuntu" {

  name = "Ubuntu"
  num_cpus = 1
  memory = 2048
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore1.id
  guest_id = "ubuntu64Guest"
  
  cdrom {
    datastore_id  = data.vsphere_datastore.datastore1.id
    path = "./ubuntu-18.04.5-desktop-amd64.iso"
  }

  network_interface {
   network_id = data.vsphere_network.network.id 
   #adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  disk {
    label = "disk5"
    size = 20
  }
  wait_for_guest_ip_timeout = -1
  /*clone {
    
   // template_uuid =  data.vsphere_virtual_machine.template.id
  }*/


}
