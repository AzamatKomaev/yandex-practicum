resource "yandex_compute_instance" "vm-1" {

  name        = "linux-vm"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"
  allow_stopping_for_update = true
	

  resources {
    cores  = "2"
    memory = "1"
    core_fraction = "5"
  }

  boot_disk {
    initialize_params {
      image_id = "fd82sqrj4uk9j7vlki3q"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.skynet-1.id}"
    nat       = true
  }

  metadata = {
    user-data = "${file("./meta.txt")}"
  }
}


