package res

import "list"

#aws_globalaccelerator_accelerator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_globalaccelerator_accelerator")
	dns_name?:            string
	dual_stack_dns_name?: string
	enabled?:             bool
	hosted_zone_id?:      string
	id?:                  string
	ip_address_type?:     string
	ip_addresses?: [...string]
	ip_sets?: [...{
		ip_addresses?: [...string]
		ip_family?: string
	}]
	name: string
	tags?: [string]: string
	tags_all?: [string]: string
	attributes?: #attributes | list.MaxItems(1) & [...#attributes]
	timeouts?:   #timeouts

	#attributes: {
		flow_logs_enabled?:   bool
		flow_logs_s3_bucket?: string
		flow_logs_s3_prefix?: string
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
