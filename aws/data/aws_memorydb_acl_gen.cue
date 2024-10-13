package data

#aws_memorydb_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_memorydb_acl")
	arn?:                    string
	id?:                     string
	minimum_engine_version?: string
	name!:                   string
	tags?: [string]: string
	user_names?: [...string]
}
