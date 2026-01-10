package res

#aws_servicequotas_service_quota: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_servicequotas_service_quota")
	close({
		adjustable?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		arn?:            string
		default_value?:  number
		id?:             string
		quota_code!:     string
		quota_name?:     string
		request_id?:     string
		request_status?: string
		service_code!:   string
		service_name?:   string
		usage_metric?: [...close({
			metric_dimensions?: [...close({
				class?:    string
				resource?: string
				service?:  string
				type?:     string
			})]
			metric_name?:                     string
			metric_namespace?:                string
			metric_statistic_recommendation?: string
		})]
		value!: number
	})
}
