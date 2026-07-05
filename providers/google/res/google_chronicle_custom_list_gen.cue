package res

google_chronicle_custom_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_custom_list")
	close({
		timeouts?: #timeouts

		// The value of the custom list.
		// Maximum length: 1024 characters
		category!: string

		// Id of the Custom List record.
		custom_list_id?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The key of the custom list.
		// Maximum length: 2048 characters
		entity_identifier!: string

		// The environments to which the custom list is associated.
		environments!: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the custom list.
		name?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
