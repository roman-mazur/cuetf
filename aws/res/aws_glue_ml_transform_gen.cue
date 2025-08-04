package res

import "list"

#aws_glue_ml_transform: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_ml_transform")
	close({
		arn?:          string
		description?:  string
		glue_version?: string
		id?:           string
		label_count?:  number
		max_capacity?: number
		max_retries?:  number
		name!:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		input_record_tables?: matchN(1, [#input_record_tables, [_, ...] & [...#input_record_tables]])
		parameters?: matchN(1, [#parameters, list.MaxItems(1) & [_, ...] & [...#parameters]])
		number_of_workers?: number
		role_arn!:          string
		schema?: [...close({
			data_type?: string
			name?:      string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
		timeout?:     number
		worker_type?: string
	})

	#input_record_tables: close({
		catalog_id?:      string
		connection_name?: string
		database_name!:   string
		table_name!:      string
	})

	#parameters: close({
		find_matches_parameters?: matchN(1, [_#defs."/$defs/parameters/$defs/find_matches_parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/parameters/$defs/find_matches_parameters"]])
		transform_type!: string
	})

	_#defs: "/$defs/parameters/$defs/find_matches_parameters": close({
		accuracy_cost_trade_off?:    number
		enforce_provided_labels?:    bool
		precision_recall_trade_off?: number
		primary_key_column_name?:    string
	})
}
