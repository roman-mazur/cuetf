package aws

// #Terraform defines the schema of terraform json document that uses the AWS provider.
//
// Example:
//
//		import "github.com/roman-mazur/cuetf/aws"
//
//		myAwsTerraform: aws.#Terraform & {
//			provider: aws: region: "us-east-1"
//			resource: aws_instance: my_server: instance_type: "t2.micro" // Validated with the schema.
//		}
//
#Terraform: {
	provider?: aws: #provider

	resource?: [type=#awsTypes]: [name=string]: _res[type]
	data?: [type=#awsTypes]: [name=string]:     _ds[type]
}

#awsTypes: =~"^aws_.+"

_res: [#awsTypes]: _
_ds: [#awsTypes]:  _
