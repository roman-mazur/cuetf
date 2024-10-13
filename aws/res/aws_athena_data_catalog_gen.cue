package res

#aws_athena_data_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_athena_data_catalog")
	arn?:         string
	description!: string
	id?:          string
	name!:        string
	parameters!: [string]: string
	tags?: [string]: string
	tags_all?: [string]: string
	type!: string
}
