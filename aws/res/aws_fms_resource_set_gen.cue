package res

#aws_fms_resource_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fms_resource_set")
	arn?: string
	id?:  string
	tags?: [string]:     string
	tags_all?: [string]: string
	resource_set?: #resource_set | [...#resource_set]
	timeouts?: #timeouts

	#resource_set: {
		description?:         string
		id?:                  string
		last_update_time?:    string
		name!:                string
		resource_set_status?: string
		resource_type_list?: [...string]
		update_token?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
