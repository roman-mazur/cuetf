package res

google_chronicle_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_environment")
	close({
		timeouts?: #timeouts

		// Environment nicknames.
		aliases_json?: string

		// MAX_NAME_LENGTH = 256
		// Name of the contact for the environment.
		contact!: string

		// MAX_NAME_LENGTH = 256
		// Email of the contact for the environment. Multiple emails can be sepereated
		// with the ';' character.
		contact_emails!: string

		// MAX_NAME_LENGTH = 256
		// Phone number of the contact for the environment.
		contact_phone!: string

		// data access scopes.
		data_access_scopes_json?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Whether Terraform will be prevented from destroying the environment. Deleting
		// an environment will remove all its data and all playbooks, environments,
		// integrations instances, reports and agents related to the environment. Once
		// you delete an environment, it cannot be reversed. Deleting environments via
		// terraform destroy or terraform apply will only succeed if this field is
		// false in the Terraform state.
		deletion_protection?: bool

		// MAX_NAME_LENGTH = 256
		// Description of the environment.
		description!: string

		// Name of the environment
		// MAX_NAME_LENGTH = 256
		display_name!: string

		// Id of the environment record.
		environment_id?: string
		id?:             string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The unique name(ID) of the Environment.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/environments/{environment}
		name?: string

		// Environment data retention in months.
		retention_duration!: number
		project?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
