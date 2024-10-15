package res

#aws_memorydb_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_acl")
	arn?:                    string
	id?:                     string
	minimum_engine_version?: string
	name?:                   string
	name_prefix?:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	user_names?: [...string]
}
