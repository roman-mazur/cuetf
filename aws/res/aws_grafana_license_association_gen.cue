package res

#aws_grafana_license_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_grafana_license_association")
	free_trial_expiration?: string
	id?:                    string
	license_expiration?:    string
	license_type:           string
	workspace_id:           string
	timeouts?:              #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
