package res

import "list"

#aws_batch_job_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_batch_job_definition")
	arn?:                  string
	container_properties?: string
	id?:                   string
	name:                  string
	parameters?: [string]: string
	platform_capabilities?: [...string]
	propagate_tags?: bool
	revision?:       number
	tags?: [string]: string
	tags_all?: [string]: string
	type:            string
	retry_strategy?: #retry_strategy | list.MaxItems(1) & [...#retry_strategy]
	timeout?:        #timeout | list.MaxItems(1) & [...#timeout]

	#retry_strategy: {
		attempts?:         number
		evaluate_on_exit?: #retry_strategy.#evaluate_on_exit | list.MaxItems(5) & [...#retry_strategy.#evaluate_on_exit]

		#evaluate_on_exit: {
			action:            string
			on_exit_code?:     string
			on_reason?:        string
			on_status_reason?: string
		}
	}

	#timeout: attempt_duration_seconds?: number
}
