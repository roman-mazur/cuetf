package res

google_apigee_envgroup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_envgroup")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Hostnames of the environment group.
		hostnames?: [...string]
		id?: string

		// The resource ID of the environment group.
		name!: string

		// The Apigee Organization associated with the Apigee environment group,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
