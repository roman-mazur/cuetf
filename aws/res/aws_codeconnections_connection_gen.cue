package res

#aws_codeconnections_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeconnections_connection")
	close({
		timeouts?:          #timeouts
		arn?:               string
		connection_status?: string
		host_arn?:          string
		name!:              string
		owner_account_id?:  string
		provider_type?:     string
		region?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
