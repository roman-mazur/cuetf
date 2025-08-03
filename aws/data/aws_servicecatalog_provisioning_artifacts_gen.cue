package data

#aws_servicecatalog_provisioning_artifacts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_provisioning_artifacts")
	close({
		accept_language?: string
		timeouts?:        #timeouts
		id?:              string
		product_id!:      string
		provisioning_artifact_details?: [...close({
			active?:       bool
			created_time?: string
			description?:  string
			guidance?:     string
			id?:           string
			name?:         string
			type?:         string
		})]
		region?: string
	})

	#timeouts: close({
		read?: string
	})
}
