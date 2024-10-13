package res

import "list"

#aws_evidently_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_evidently_project")
	active_experiment_count?: number
	active_launch_count?:     number
	arn?:                     string
	created_time?:            string
	description?:             string
	experiment_count?:        number
	feature_count?:           number
	id?:                      string
	last_updated_time?:       string
	launch_count?:            number
	name!:                    string
	status?:                  string
	tags?: [string]: string
	tags_all?: [string]: string
	data_delivery?: #data_delivery | list.MaxItems(1) & [...#data_delivery]
	timeouts?: #timeouts

	#data_delivery: {
		cloudwatch_logs?: #data_delivery.#cloudwatch_logs | list.MaxItems(1) & [...#data_delivery.#cloudwatch_logs]
		s3_destination?: #data_delivery.#s3_destination | list.MaxItems(1) & [...#data_delivery.#s3_destination]

		#cloudwatch_logs: log_group?: string

		#s3_destination: {
			bucket?: string
			prefix?: string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
