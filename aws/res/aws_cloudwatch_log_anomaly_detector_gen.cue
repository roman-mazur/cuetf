package res

#aws_cloudwatch_log_anomaly_detector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_log_anomaly_detector")
	close({
		anomaly_visibility_time?: number
		arn?:                     string
		detector_name?:           string
		enabled!:                 bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		evaluation_frequency?: string
		filter_pattern?:       string
		kms_key_id?:           string
		log_group_arn_list!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
