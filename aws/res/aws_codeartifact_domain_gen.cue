package res

#aws_codeartifact_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codeartifact_domain")
	arn?:              string
	asset_size_bytes?: string
	created_time?:     string
	domain:            string
	encryption_key?:   string
	id?:               string
	owner?:            string
	repository_count?: number
	tags?: [string]: string
	tags_all?: [string]: string
}
