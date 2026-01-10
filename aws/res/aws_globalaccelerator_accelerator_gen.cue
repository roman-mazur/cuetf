package res

import "list"

#aws_globalaccelerator_accelerator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_globalaccelerator_accelerator")
	close({
		arn?:                 string
		dns_name?:            string
		dual_stack_dns_name?: string
		enabled?:             bool
		hosted_zone_id?:      string
		id?:                  string
		attributes?: matchN(1, [#attributes, list.MaxItems(1) & [...#attributes]])
		ip_address_type?: string
		timeouts?:        #timeouts
		ip_addresses?: [...string]
		ip_sets?: [...close({
			ip_addresses?: [...string]
			ip_family?: string
		})]
		name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#attributes: close({
		flow_logs_enabled?:   bool
		flow_logs_s3_bucket?: string
		flow_logs_s3_prefix?: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
