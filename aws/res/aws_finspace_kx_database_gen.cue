package res

#aws_finspace_kx_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_finspace_kx_database")
	arn?:                     string
	created_timestamp?:       string
	description?:             string
	environment_id!:          string
	id?:                      string
	last_modified_timestamp?: string
	name!:                    string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
