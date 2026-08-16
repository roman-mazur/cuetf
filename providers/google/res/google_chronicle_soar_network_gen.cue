package res

google_chronicle_soar_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_soar_network")
	close({
		timeouts?: #timeouts

		// Subnet in CIDR format.
		address!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// SoarNetwork name, limited to 4096 characters.
		display_name!: string

		// SoarNetwork associated logical environments.
		environments_json!: string
		id?:                string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the SoarNetwork.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/soarNetworks/{soar_network}
		name?: string

		// SoarNetwork priority.
		priority?: number

		// Id of the soarNetwork record.
		soar_network_id?: string
		project?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
