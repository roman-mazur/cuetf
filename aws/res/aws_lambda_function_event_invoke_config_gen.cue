package res

import "list"

#aws_lambda_function_event_invoke_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_function_event_invoke_config")
	close({
		destination_config?: matchN(1, [#destination_config, list.MaxItems(1) & [...#destination_config]])
		function_name!:                string
		id?:                           string
		maximum_event_age_in_seconds?: number
		maximum_retry_attempts?:       number
		qualifier?:                    string
		region?:                       string
	})

	#destination_config: close({
		on_failure?: matchN(1, [_#defs."/$defs/destination_config/$defs/on_failure", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/on_failure"]])
		on_success?: matchN(1, [_#defs."/$defs/destination_config/$defs/on_success", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/on_success"]])
	})

	_#defs: "/$defs/destination_config/$defs/on_failure": close({
		destination!: string
	})

	_#defs: "/$defs/destination_config/$defs/on_success": close({
		destination!: string
	})
}
