package res

#aws_workspaces_connection_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_workspaces_connection_alias")
	connection_string!: string
	id?:                string
	owner_account_id?:  string
	state?:             string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
