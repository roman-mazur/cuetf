package res

#aws_datapipeline_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datapipeline_pipeline")
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
}
