package res

#aws_workspaces_connection_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_connection_alias")
	close({
		connection_string!: string
		timeouts?:          #timeouts
		id?:                string
		owner_account_id?:  string
		region?:            string
		state?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
