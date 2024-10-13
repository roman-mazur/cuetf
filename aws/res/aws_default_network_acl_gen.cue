package res

#aws_default_network_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_default_network_acl")
	arn?:                    string
	default_network_acl_id!: string
	id?:                     string
	owner_id?:               string
	subnet_ids?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?: string
	egress?: #egress | [...#egress]
	ingress?: #ingress | [...#ingress]

	#egress: {
		action!:          string
		cidr_block?:      string
		from_port!:       number
		icmp_code?:       number
		icmp_type?:       number
		ipv6_cidr_block?: string
		protocol!:        string
		rule_no!:         number
		to_port!:         number
	}

	#ingress: {
		action!:          string
		cidr_block?:      string
		from_port!:       number
		icmp_code?:       number
		icmp_type?:       number
		ipv6_cidr_block?: string
		protocol!:        string
		rule_no!:         number
		to_port!:         number
	}
}
