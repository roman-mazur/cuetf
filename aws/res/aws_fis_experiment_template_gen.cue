package res

import "list"

#aws_fis_experiment_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fis_experiment_template")
	description!: string
	id?:          string
	role_arn!:    string
	tags?: [string]:     string
	tags_all?: [string]: string
	action?: #action | [_, ...] & [...#action]
	experiment_options?: #experiment_options | list.MaxItems(1) & [...#experiment_options]
	log_configuration?: #log_configuration | list.MaxItems(1) & [...#log_configuration]
	stop_condition?: #stop_condition | [_, ...] & [...#stop_condition]
	target?: #target | [...#target]
	timeouts?: #timeouts

	#action: {
		action_id!:   string
		description?: string
		name!:        string
		start_after?: [...string]
		parameter?: #action.#parameter | [...#action.#parameter]
		target?: #action.#target | list.MaxItems(1) & [...#action.#target]

		#parameter: {
			key!:   string
			value!: string
		}

		#target: {
			key!:   string
			value!: string
		}
	}

	#experiment_options: {
		account_targeting?:            string
		empty_target_resolution_mode?: string
	}

	#log_configuration: {
		log_schema_version!: number
		cloudwatch_logs_configuration?: #log_configuration.#cloudwatch_logs_configuration | list.MaxItems(1) & [...#log_configuration.#cloudwatch_logs_configuration]
		s3_configuration?: #log_configuration.#s3_configuration | list.MaxItems(1) & [...#log_configuration.#s3_configuration]

		#cloudwatch_logs_configuration: log_group_arn!: string

		#s3_configuration: {
			bucket_name!: string
			prefix?:      string
		}
	}

	#stop_condition: {
		source!: string
		value?:  string
	}

	#target: {
		name!: string
		parameters?: [string]: string
		resource_arns?: [...string]
		resource_type!:  string
		selection_mode!: string
		filter?: #target.#filter | [...#target.#filter]
		resource_tag?: #target.#resource_tag | list.MaxItems(50) & [...#target.#resource_tag]

		#filter: {
			path!: string
			values!: [...string]
		}

		#resource_tag: {
			key!:   string
			value!: string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
