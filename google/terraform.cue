package google

// #Terraform defines the schema of terraform json document that uses the Google provider.
//
// Example:
//
//		import "github.com/roman-mazur/cuetf/google"
//
//		myGoogleTerraform: google.#Terraform & {
//			provider: google: project_id: "my-proj"
//			resource: google_compute_instance: my_server: instance_type: "e2-micro" // Validated with the schema.
//		}
//
#Terraform: {
	provider?: google: #provider

	resource?: [type=#googleTypes]: [name=string]: _res[type]
	data?: [type=#googleTypes]: [name=string]:     _ds[type]
}

#googleTypes: =~"^google_.+"

_res: [#googleTypes]: _
_ds: [#googleTypes]:  _
