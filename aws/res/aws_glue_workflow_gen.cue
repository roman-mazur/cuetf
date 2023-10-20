package res

#aws_glue_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_workflow")
	arn?: string
	default_run_properties?: [string]: string
	description?:         string
	id?:                  string
	max_concurrent_runs?: number
	name?:                string
	tags?: [string]: string
	tags_all?: [string]: string
}
