package res

import "list"

#aws_route53_resolver_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_endpoint")
	arn?:         string
	direction:    string
	host_vpc_id?: string
	id?:          string
	name?:        string
	security_group_ids: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	ip_address?: #ip_address | list.MaxItems(10) & [_, _, ...] & [...#ip_address]
	timeouts?:   #timeouts

	#ip_address: {
		ip?:       string
		ip_id?:    string
		subnet_id: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
