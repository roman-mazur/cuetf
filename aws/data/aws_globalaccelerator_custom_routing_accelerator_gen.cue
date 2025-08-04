package data

#aws_globalaccelerator_custom_routing_accelerator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_globalaccelerator_custom_routing_accelerator")
	close({
		arn?: string
		attributes?: [...close({
			flow_logs_enabled?:   bool
			flow_logs_s3_bucket?: string
			flow_logs_s3_prefix?: string
		})]
		dns_name?:        string
		enabled?:         bool
		hosted_zone_id?:  string
		id?:              string
		ip_address_type?: string
		ip_sets?: [...close({
			ip_addresses?: [...string]
			ip_family?: string
		})]
		name?: string
		tags?: [string]: string
	})
}
