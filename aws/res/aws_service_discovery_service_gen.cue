package res

import "list"

#aws_service_discovery_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_service_discovery_service")
	close({
		arn?:           string
		description?:   string
		force_destroy?: bool
		id?:            string
		name!:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		dns_config?: matchN(1, [#dns_config, list.MaxItems(1) & [...#dns_config]])
		health_check_config?: matchN(1, [#health_check_config, list.MaxItems(1) & [...#health_check_config]])
		namespace_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
		health_check_custom_config?: matchN(1, [#health_check_custom_config, list.MaxItems(1) & [...#health_check_custom_config]])
	})

	#dns_config: close({
		dns_records!: matchN(1, [_#defs."/$defs/dns_config/$defs/dns_records", [_, ...] & [..._#defs."/$defs/dns_config/$defs/dns_records"]])
		namespace_id!:   string
		routing_policy?: string
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
