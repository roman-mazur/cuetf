package res

import "list"

#aws_glue_ml_transform: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_ml_transform")
	arn?:               string
	description?:       string
	glue_version?:      string
	id?:                string
	label_count?:       number
	max_capacity?:      number
	max_retries?:       number
	name:               string
	number_of_workers?: number
	role_arn:           string
	schema?: [...{
		data_type?: string
		name?:      string
	}]
	tags?: [string]: string
	tags_all?: [string]: string
	timeout?:             number
	worker_type?:         string
	input_record_tables?: #input_record_tables | [_, ...] & [...#input_record_tables]
	parameters?:          #parameters | list.MaxItems(1) & [_, ...] & [...#parameters]

	#input_record_tables: {
		catalog_id?:      string
		connection_name?: string
		database_name:    string
		table_name:       string
	}

	#parameters: {
		transform_type:           string
		find_matches_parameters?: #parameters.#find_matches_parameters | list.MaxItems(1) & [_, ...] & [...#parameters.#find_matches_parameters]

		#find_matches_parameters: {
			accuracy_cost_trade_off?:    number
			enforce_provided_labels?:    bool
			precision_recall_trade_off?: number
			primary_key_column_name?:    string
		}
	}
}
