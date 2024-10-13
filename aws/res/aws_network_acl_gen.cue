package res

#aws_network_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_network_acl")
	arn?: string
	egress?: [...{
		action?:          string
		cidr_block?:      string
		from_port?:       number
		icmp_code?:       number
		icmp_type?:       number
		ipv6_cidr_block?: string
		protocol?:        string
		rule_no?:         number
		to_port?:         number
	}]
	id?: string
	ingress?: [...{
		action?:          string
		cidr_block?:      string
		from_port?:       number
		icmp_code?:       number
		icmp_type?:       number
		ipv6_cidr_block?: string
		protocol?:        string
		rule_no?:         number
		to_port?:         number
	}]
	owner_id?: string
	subnet_ids?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_id!: string
}
