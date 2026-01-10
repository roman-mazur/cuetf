package res

import "list"

#aws_evidently_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_evidently_project")
	close({
		active_experiment_count?: number
		data_delivery?: matchN(1, [#data_delivery, list.MaxItems(1) & [...#data_delivery]])
		active_launch_count?: number
		arn?:                 string
		created_time?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		description?:       string
		experiment_count?:  number
		feature_count?:     number
		timeouts?:          #timeouts
		id?:                string
		last_updated_time?: string
		launch_count?:      number
		name!:              string
		status?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#data_delivery: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/data_delivery/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/data_delivery/$defs/cloudwatch_logs"]])
		s3_destination?: matchN(1, [_#defs."/$defs/data_delivery/$defs/s3_destination", list.MaxItems(1) & [..._#defs."/$defs/data_delivery/$defs/s3_destination"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/data_delivery/$defs/cloudwatch_logs": close({
		log_group?: string
	})

	_#defs: "/$defs/data_delivery/$defs/s3_destination": close({
		bucket?: string
		prefix?: string
	})
}
