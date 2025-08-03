package res

#aws_grafana_license_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_grafana_license_association")
	close({
		free_trial_expiration?: string
		timeouts?:              #timeouts
		grafana_token?:         string
		id?:                    string
		license_expiration?:    string
		license_type!:          string
		region?:                string
		workspace_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
