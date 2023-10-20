package data

#aws_prometheus_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_prometheus_workspace")
	alias?:               string
	arn?:                 string
	created_date?:        string
	id?:                  string
	prometheus_endpoint?: string
	status?:              string
	tags?: [string]: string
	workspace_id: string
}
