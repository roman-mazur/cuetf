package data

#google_parameter_manager_regional_parameters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_parameter_manager_regional_parameters")
	close({
		// Filter string, adhering to the rules in List-operation
		// filtering. List only parameters matching the filter.
		// If filter is empty, all regional parameters are listed from
		// specific location.
		filter?:   string
		id?:       string
		location!: string
		parameters?: [...close({
			create_time?: string
			effective_labels?: [string]: string
			format?:  string
			kms_key?: string
			labels?: [string]: string
			location?:     string
			name?:         string
			parameter_id?: string
			policy_member?: [...close({
				iam_policy_name_principal?: string
				iam_policy_uid_principal?:  string
			})]
			project?: string
			terraform_labels?: [string]: string
			update_time?: string
		})]
		project?: string
	})
}
