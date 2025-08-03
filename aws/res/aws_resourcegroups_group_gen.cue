package res

import "list"

#aws_resourcegroups_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resourcegroups_group")
	close({
		arn?: string
		configuration?: matchN(1, [#configuration, [...#configuration]])
		resource_query?: matchN(1, [#resource_query, list.MaxItems(1) & [...#resource_query]])
		timeouts?:    #timeouts
		description?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#configuration: close({
		type!: string
		parameters?: matchN(1, [_#defs."/$defs/configuration/$defs/parameters", [..._#defs."/$defs/configuration/$defs/parameters"]])
	})

	#resource_query: close({
		query!: string
		type?:  string
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/parameters": close({
		name!: string
		values!: [...string]
	})
}
