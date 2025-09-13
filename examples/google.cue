package examples

import "github.com/roman-mazur/cuetf/google"

googleServer: google.#Terraform & {
	 provider: google: project: "my_proj"
	 resource: google_compute_instance: test: {
	 		name: "test"
	 		machine_type: "e2-micro"
	 }
}
