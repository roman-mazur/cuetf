package res

#aws_vpc_security_group_ingress_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_security_group_ingress_rule")
	arn?:                          string
	cidr_ipv4?:                    string
	cidr_ipv6?:                    string
	description?:                  string
	from_port?:                    number
	id?:                           string
	ip_protocol!:                  string
	prefix_list_id?:               string
	referenced_security_group_id?: string
	security_group_id!:            string
	security_group_rule_id?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	to_port?: number
}
