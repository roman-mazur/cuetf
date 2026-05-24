package res

#google_apigee_nat_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_nat_address")
	close({
		timeouts?: #timeouts

		// Flag that specifies whether the reserved NAT address should be
		// activate.
		activate?: bool

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The Apigee instance associated with the Apigee environment,
		// in the format
		// 'organizations/{{org_name}}/instances/{{instance_name}}'.
		instance_id!: string

		// The allocated NAT IP address.
		ip_address?: string

		// Resource ID of the NAT address.
		name!: string

		// State of the NAT IP address.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
