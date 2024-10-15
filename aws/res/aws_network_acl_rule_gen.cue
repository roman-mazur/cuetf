package res

#aws_network_acl_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_acl_rule")
	cidr_block?:      string
	egress?:          bool
	from_port?:       number
	icmp_code?:       number
	icmp_type?:       number
	id?:              string
	ipv6_cidr_block?: string
	network_acl_id!:  string
	protocol!:        string
	rule_action!:     string
	rule_number!:     number
	to_port?:         number
}
