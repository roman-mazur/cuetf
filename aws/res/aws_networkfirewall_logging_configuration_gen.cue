package res

import "list"

#aws_networkfirewall_logging_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_logging_configuration")
	firewall_arn!: string
	id?:           string
	logging_configuration?: #logging_configuration | list.MaxItems(1) & [_, ...] & [...#logging_configuration]

	#logging_configuration: {
		log_destination_config?: #logging_configuration.#log_destination_config | list.MaxItems(3) & [_, ...] & [...#logging_configuration.#log_destination_config]

		#log_destination_config: {
			log_destination!: [string]: string
			log_destination_type!: string
			log_type!:             string
		}
	}
}
