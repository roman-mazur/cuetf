package res

#aws_fms_resource_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fms_resource_set")
	close({
		arn?: string
		resource_set?: matchN(1, [#resource_set, [...#resource_set]])
		timeouts?: #timeouts
		id?:       string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#resource_set: close({
		description?:         string
		id?:                  string
		last_update_time?:    string
		name!:                string
		resource_set_status?: string
		resource_type_list?: [...string]
		update_token?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
