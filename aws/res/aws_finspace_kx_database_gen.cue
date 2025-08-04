package res

#aws_finspace_kx_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_database")
	close({
		arn?:                     string
		created_timestamp?:       string
		description?:             string
		environment_id!:          string
		id?:                      string
		last_modified_timestamp?: string
		name!:                    string
		timeouts?:                #timeouts
		region?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
