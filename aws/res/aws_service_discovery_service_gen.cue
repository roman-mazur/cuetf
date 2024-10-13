package res

import "list"

#aws_service_discovery_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_service_discovery_service")
	arn?:           string
	description?:   string
	force_destroy?: bool
	id?:            string
	name!:          string
	namespace_id?:  string
	tags?: [string]: string
	tags_all?: [string]: string
	type?: string
	dns_config?: #dns_config | list.MaxItems(1) & [...#dns_config]
	health_check_config?: #health_check_config | list.MaxItems(1) & [...#health_check_config]
	health_check_custom_config?: #health_check_custom_config | list.MaxItems(1) & [...#health_check_custom_config]

	#dns_config: {
		namespace_id!:   string
		routing_policy?: string
		dns_records?: #dns_config.#dns_records | [_, ...] & [...#dns_config.#dns_records]

		#dns_records: {
			ttl!:  number
			type!: string
		}
	}

	#health_check_config: {
		failure_threshold?: number
		resource_path?:     string
		type?:              string
	}

	#health_check_custom_config: failure_threshold?: number
}
