package res

google_app_engine_application_url_dispatch_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_app_engine_application_url_dispatch_rules")
	close({
		dispatch_rules!: matchN(1, [#dispatch_rules, [_, ...] & [...#dispatch_rules]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string
		project?:         string
	})

	#dispatch_rules: close({
		// Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".
		// Defaults to matching all domains: "*".
		domain?: string

		// Pathname within the host. Must start with a "/". A single "*" can be included
		// at the end of the path.
		// The sum of the lengths of the domain and path may not exceed 100 characters.
		path!: string

		// Pathname within the host. Must start with a "/". A single "*" can be included
		// at the end of the path.
		// The sum of the lengths of the domain and path may not exceed 100 characters.
		service!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
