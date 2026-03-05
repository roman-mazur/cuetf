package scaleway

// #Terraform defines the schema of terraform json document that uses the Scaleway provider.
//
// Example:
//
//		import "github.com/roman-mazur/cuetf/scaleway"
//
//		myScalewayTerraform: scaleway.#Terraform & {
//			provider: scaleway: project_id: "my-proj"
//			resource: scaleway_instance_server: my_server: type: "DEV1-L"
//		}
//
#Terraform: _
