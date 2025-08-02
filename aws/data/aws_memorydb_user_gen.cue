package data

#aws_memorydb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_user")
	close({
		access_string?: string
		arn?:           string
		authentication_mode?: [...close({
			password_count?: number
			type?:           string
		})]
		id?:                     string
		minimum_engine_version?: string
		region?:                 string
		tags?: [string]: string
		user_name!: string
	})
}
