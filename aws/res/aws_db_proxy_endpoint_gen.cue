package res

#aws_db_proxy_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_proxy_endpoint")
	close({
		arn?:                    string
		db_proxy_endpoint_name!: string
		db_proxy_name!:          string
		endpoint?:               string
		id?:                     string
		is_default?:             bool
		region?:                 string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
		target_role?: string
		vpc_id?:      string
		vpc_security_group_ids?: [...string]
		vpc_subnet_ids!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
