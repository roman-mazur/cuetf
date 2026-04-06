cuetf
=====

CUE definitions for the selected Terraform providers.

Usage example:
```cue
import "github.com/roman-mazur/cuetf/providers/google"

googleInfra: google.#Terraform & {
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

### Versioning

This repo is updated automatically by dependabot when new updates to the Terraform providers are detected.
CUE module releases happen monthly, with versions following the pattern `<major>.YYMM.0`.
For example, the release that happened in February 2026 is represented 
with the version `v0.2602.0` published to the CUE Central Registry.

### Embedding

Instead of importing from the CUE Central Registry you can also choose to vendor the definitions into your project.
Command `embed` available in this repo can be used to generate the definitions for a selected Terraform provider version
putting the generated code into your `cue.mod/pkg` directory.

Example:
```shell
# Run in your CUE project.
go run rmazur.io/cuetf/cmd/embed@latest integrations/github 6.11.1
```

Be aware of the [limitations related to this use case](https://cuelang.org/docs/concept/modules-packages-instances/#deprecated-directories):
these definitions will not be accessible if you use them in a shared module that other modules depend on.
