package res

import "list"

#aws_service_discovery_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service_discovery_service")
	close({
		arn?:         string
		description?: string
		dns_config?: matchN(1, [#dns_config, list.MaxItems(1) & [...#dns_config]])
		health_check_config?: matchN(1, [#health_check_config, list.MaxItems(1) & [...#health_check_config]])
		health_check_custom_config?: matchN(1, [#health_check_custom_config, list.MaxItems(1) & [...#health_check_custom_config]])
		force_destroy?: bool
		id?:            string
		name!:          string
		namespace_id?:  string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#dns_config: close({
		namespace_id!:   string
		routing_policy?: string
		dns_records?: matchN(1, [_#defs."/$defs/dns_config/$defs/dns_records", [_, ...] & [..._#defs."/$defs/dns_config/$defs/dns_records"]])
	})

	#health_check_config: close({
		failure_threshold?: number
		resource_path?:     string
		type?:              string
	})

	#health_check_custom_config: close({})

	_#defs: "/$defs/dns_config/$defs/dns_records": close({
		ttl!:  number
		type!: string
	})
}
