package res

#aws_workspaces_ip_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_workspaces_ip_group")
	description?: string
	id?:          string
	name!:        string
	tags?: [string]: string
	tags_all?: [string]: string
	rules?: #rules | [...#rules]

	#rules: {
		description?: string
		source!:      string
	}
}
