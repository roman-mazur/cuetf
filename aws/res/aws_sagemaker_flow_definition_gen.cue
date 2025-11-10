package res

import "list"

#aws_sagemaker_flow_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_flow_definition")
	close({
		arn?:                  string
		flow_definition_name!: string
		id?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		tags?: [string]: string
		human_loop_activation_config?: matchN(1, [#human_loop_activation_config, list.MaxItems(1) & [...#human_loop_activation_config]])
		tags_all?: [string]: string
		human_loop_config!: matchN(1, [#human_loop_config, list.MaxItems(1) & [_, ...] & [...#human_loop_config]])
		human_loop_request_source?: matchN(1, [#human_loop_request_source, list.MaxItems(1) & [...#human_loop_request_source]])
		output_config!: matchN(1, [#output_config, list.MaxItems(1) & [_, ...] & [...#output_config]])
	})

	#human_loop_activation_config: close({
		human_loop_activation_conditions_config?: matchN(1, [_#defs."/$defs/human_loop_activation_config/$defs/human_loop_activation_conditions_config", list.MaxItems(1) & [..._#defs."/$defs/human_loop_activation_config/$defs/human_loop_activation_conditions_config"]])
	})

	#human_loop_config: close({
		public_workforce_task_price?: matchN(1, [_#defs."/$defs/human_loop_config/$defs/public_workforce_task_price", list.MaxItems(1) & [..._#defs."/$defs/human_loop_config/$defs/public_workforce_task_price"]])
		human_task_ui_arn!:                     string
		task_availability_lifetime_in_seconds?: number
		task_count!:                            number
		task_description!:                      string
		task_keywords?: [...string]
		task_time_limit_in_seconds?: number
		task_title!:                 string
		workteam_arn!:               string
	})

	#human_loop_request_source: close({
		aws_managed_human_loop_request_source!: string
	})

	#output_config: close({
		kms_key_id?:     string
		s3_output_path!: string
	})

	_#defs: "/$defs/human_loop_activation_config/$defs/human_loop_activation_conditions_config": close({
		human_loop_activation_conditions!: string
	})

	_#defs: "/$defs/human_loop_config/$defs/public_workforce_task_price": close({
		amount_in_usd?: matchN(1, [_#defs."/$defs/human_loop_config/$defs/public_workforce_task_price/$defs/amount_in_usd", list.MaxItems(1) & [..._#defs."/$defs/human_loop_config/$defs/public_workforce_task_price/$defs/amount_in_usd"]])
	})

	_#defs: "/$defs/human_loop_config/$defs/public_workforce_task_price/$defs/amount_in_usd": close({
		cents?:                     number
		dollars?:                   number
		tenth_fractions_of_a_cent?: number
	})
}
