resource "yandex_vpc_subnet" "skynet-1" {
	name = "skynet-1"
	zone = "ru-central1-a"
	network_id = yandex_vpc_network.skynet-1.id
	v4_cidr_blocks = ["192.168.10.0/24"]
}
