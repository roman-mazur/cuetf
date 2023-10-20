package res

import "list"

#aws_apprunner_vpc_ingress_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apprunner_vpc_ingress_connection")
	arn?:         string
	domain_name?: string
	id?:          string
	name:         string
	service_arn:  string
	status?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	ingress_vpc_configuration?: #ingress_vpc_configuration | list.MaxItems(1) & [_, ...] & [...#ingress_vpc_configuration]

	#ingress_vpc_configuration: {
		vpc_endpoint_id?: string
		vpc_id?:          string
	}
}
