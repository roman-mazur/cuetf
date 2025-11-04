cuetf
=====

CUE definitions for the selected Terraform providers.

Usage example:
```cue
import "github.com/roman-mazur/cuetf/google"

googleServer: google.#Terraform & {
	provider: google: {
		project: "my_proj"
		zone:    "us-east1-b"
	}
	resource: google_compute_instance: test: {
		name:         "test"
		machine_type: "e2-micro"
		boot_disk: initialize_params: image: "cos-cloud/cos-stable"
		network_interface: network: "default"
	}
}
```

Then you can do
```shell
cue export -e googleInfra > my-infra.tf.json
terraform init
terraform plan
```

See the [examples directory](examples) too.
