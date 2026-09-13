package res

google_chronicle_case_close_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_case_close_definition")
	close({
		timeouts?: #timeouts

		// The ID of the case close definition.
		case_close_definition_id?: string

		// Specify why the case was closed. Possible values: ["MALICIOUS",
		// "NOT_MALICIOUS", "MAINTENANCE", "INCONCLUSIVE"]
		close_reason!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The unique identifier for the Chronicle instance, which is the same as the customer ID.
		instance!: string

		// The location of the resource. This is the geographical region where the
		// Chronicle instance resides, such as "us" or "europe-west2".
		location!: string

		// Identifier. The unique name(ID) of the CaseCloseDefinition.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/caseCloseDefinitions/{case_close_definition}
		name?: string

		// Provides detailed description about the specific root cause option.
		root_cause!: string
		project?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
