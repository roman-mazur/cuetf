package res

google_chronicle_case_stage_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_case_stage_definition")
	close({
		timeouts?: #timeouts

		// The unique identifier for the CaseStageDefinition.
		case_stage_definition_id?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name of the stage. The display name must be unique within the
		// instance. The display name must not contain special characters.
		display_name!: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the CaseStageDefinition.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/caseStageDefinitions/{case_stage_definition}
		name?: string

		// Defines the case stage order in the lifetime of a case.
		order!:   number
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
