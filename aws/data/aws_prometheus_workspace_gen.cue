package data

#aws_prometheus_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_workspace")
	alias?:               string
	arn?:                 string
	created_date?:        string
	id?:                  string
	kms_key_arn?:         string
	prometheus_endpoint?: string
	status?:              string
	tags?: [string]: string
	workspace_id!: string
}
