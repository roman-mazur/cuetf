package res

import "list"

#aws_networkfirewall_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_logging_configuration")
	close({
		enable_monitoring_dashboard?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		firewall_arn!: string
		id?:           string
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [_, ...] & [...#logging_configuration]])
	})

	#logging_configuration: close({
		log_destination_config?: matchN(1, [_#defs."/$defs/logging_configuration/$defs/log_destination_config", list.MaxItems(3) & [_, ...] & [..._#defs."/$defs/logging_configuration/$defs/log_destination_config"]])
	})

	_#defs: "/$defs/logging_configuration/$defs/log_destination_config": close({
		log_destination!: [string]: string
		log_destination_type!: string
		log_type!:             string
	})
}
