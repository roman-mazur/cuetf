package res

#aws_datasync_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_agent")
	close({
		activation_key?:        string
		arn?:                   string
		id?:                    string
		ip_address?:            string
		name?:                  string
		private_link_endpoint?: string
		region?:                string
		security_group_arns?: [...string]
		timeouts?: #timeouts
		subnet_arns?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_endpoint_id?: string
	})

	#timeouts: close({
		create?: string
	})
}
