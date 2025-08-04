package res

import "list"

#aws_networkfirewall_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_logging_configuration")
	close({
		logging_configuration?: matchN(1, [#logging_configuration, list.MaxItems(1) & [_, ...] & [...#logging_configuration]])
		firewall_arn!: string
		id?:           string
		region?:       string
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
