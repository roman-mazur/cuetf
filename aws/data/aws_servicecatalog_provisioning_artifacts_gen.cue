package data

#aws_servicecatalog_provisioning_artifacts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_provisioning_artifacts")
	accept_language?: string
	id?:              string
	product_id:       string
	provisioning_artifact_details?: [...{
		active?:       bool
		created_time?: string
		description?:  string
		guidance?:     string
		id?:           string
		name?:         string
		type?:         string
	}]
	timeouts?: #timeouts

	#timeouts: read?: string
}
