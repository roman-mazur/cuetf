package res

#aws_cloudwatch_log_anomaly_detector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_anomaly_detector")
	close({
		anomaly_visibility_time?: number
		arn?:                     string
		detector_name?:           string
		enabled!:                 bool
		evaluation_frequency?:    string
		filter_pattern?:          string
		kms_key_id?:              string
		log_group_arn_list!: [...string]
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
