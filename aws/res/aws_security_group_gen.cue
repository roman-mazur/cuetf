package res

#aws_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_security_group")
	arn?:         string
	description?: string
	egress?: [...{
		cidr_blocks?: [...string]
		description?: string
		from_port?:   number
		ipv6_cidr_blocks?: [...string]
		prefix_list_ids?: [...string]
		protocol?: string
		security_groups?: [...string]
		self?:    bool
		to_port?: number
	}]
	id?: string
	ingress?: [...{
		cidr_blocks?: [...string]
		description?: string
		from_port?:   number
		ipv6_cidr_blocks?: [...string]
		prefix_list_ids?: [...string]
		protocol?: string
		security_groups?: [...string]
		self?:    bool
		to_port?: number
	}]
	name?:                   string
	name_prefix?:            string
	owner_id?:               string
	revoke_rules_on_delete?: bool
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_id?:   string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
