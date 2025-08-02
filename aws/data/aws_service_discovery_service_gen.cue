package data

#aws_service_discovery_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service_discovery_service")
	close({
		arn?:         string
		description?: string
		dns_config?: [...close({
			dns_records?: [...close({
				ttl?:  number
				type?: string
			})]
			namespace_id?:   string
			routing_policy?: string
		})]
		health_check_config?: [...close({
			failure_threshold?: number
			resource_path?:     string
			type?:              string
		})]
		health_check_custom_config?: [...close({
			failure_threshold?: number
		})]
		id?:           string
		name!:         string
		namespace_id!: string
		region?:       string
		tags?: [string]: string
	})
}
