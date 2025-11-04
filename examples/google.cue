package examples

import "github.com/roman-mazur/cuetf/google"

googleServer: google.#Terraform & {
	provider: google: project: "my_proj"
	resource: google_compute_instance: test: {
		name:         "test"
		machine_type: "e2-micro"
		boot_disk: initialize_params: image: "cos-cloud/cos-stable"
		network_interface: network: "default"
	}
}
