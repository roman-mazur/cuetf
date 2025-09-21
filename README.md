cuetf
=====

CUE definitions for the selected Terraform providers.

Usage example:
```cue
import "github.com/roman-mazur/cuetf/google"

googleInfra: google.#Terraform & {
	provider: google: project: "my_proj"
	resource: google_compute_instance: test: {
		name:         "test"
		machine_type: "e2-micro"
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

a test
