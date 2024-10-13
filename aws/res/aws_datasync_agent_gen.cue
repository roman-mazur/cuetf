package res

#aws_datasync_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_agent")
	activation_key?:        string
	arn?:                   string
	id?:                    string
	ip_address?:            string
	name?:                  string
	private_link_endpoint?: string
	security_group_arns?: [...string]
	subnet_arns?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_endpoint_id?: string
	timeouts?:        #timeouts

	#timeouts: create?: string
}
