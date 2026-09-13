package res

google_chronicle_case_tag_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_case_tag_definition")
	close({
		timeouts?: #timeouts

		// When checked, the tag will be assigned as the title of the case if it meets the conditions.
		can_be_case_title!: bool

		// The unique identifier of the CaseTagDefinition.
		case_tag_definition_id?: string

		// The type of comparison to be used when comparing the value to the case.
		// Possible values: ["EXACT", "START_WITH", "CONTAIN", "ENDS_WITH"]
		comparison_type!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// This is the name of the tag that will be applied to the case.
		display_name!: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// The criteria to match the case against. Possible values: ["BY_VENDOR",
		// "BY_PRODUCT", "BY_RULE_GENERATOR", "BY_ENTITY_PROPERTY_NAME", "DATA_DRIVEN",
		// "SYSTEM"]
		match_criteria!: string

		// Identifier. The unique name(ID) of the CaseTagDefinition.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/caseTagDefinitions/{case_tag_definition_id}
		name?: string

		// Note that Google Security Operations merges priority with other alerts and
		// entities and events so that the priority here is not absolute.
		priority!: number

		// Specific Entity property name to search in case.
		// This is relevant only when a SearchIn of type BY_ENTITY_PROPERTY_NAME was chosen.
		property_name?: string
		project?:       string

		// Specific value to search in case - in addition to SearchIn property.
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
