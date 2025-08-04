package res

#aws_workspaces_ip_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_ip_group")
	close({
		rules?: matchN(1, [#rules, [...#rules]])
		description?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#rules: close({
		description?: string
		source!:      string
	})
}
