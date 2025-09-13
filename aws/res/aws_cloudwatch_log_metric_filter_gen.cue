package res

import "list"

#aws_cloudwatch_log_metric_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_metric_filter")
	close({
		apply_on_transformed_logs?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		id?:             string
		log_group_name!: string
		name!:           string
		pattern!:        string
		metric_transformation?: matchN(1, [#metric_transformation, list.MaxItems(1) & [_, ...] & [...#metric_transformation]])
	})

	#metric_transformation: close({
		default_value?: string
		dimensions?: [string]: string
		name!:      string
		namespace!: string
		unit?:      string
		value!:     string
	})
}
