package res

import "list"

#aws_lambda_function_event_invoke_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_function_event_invoke_config")
	function_name!:                string
	id?:                           string
	maximum_event_age_in_seconds?: number
	maximum_retry_attempts?:       number
	qualifier?:                    string
	destination_config?: #destination_config | list.MaxItems(1) & [...#destination_config]

	#destination_config: {
		on_failure?: #destination_config.#on_failure | list.MaxItems(1) & [...#destination_config.#on_failure]
		on_success?: #destination_config.#on_success | list.MaxItems(1) & [...#destination_config.#on_success]

		#on_failure: destination!: string

		#on_success: destination!: string
	}
}
