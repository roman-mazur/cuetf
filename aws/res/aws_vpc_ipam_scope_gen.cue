package res

#aws_vpc_ipam_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_scope")
	close({
		arn?:             string
		description?:     string
		id?:              string
		ipam_arn?:        string
		ipam_id!:         string
		ipam_scope_type?: string
		is_default?:      bool
		pool_count?:      number
		region?:          string
		timeouts?:        #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
