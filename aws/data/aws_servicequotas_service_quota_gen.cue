package data

#aws_servicequotas_service_quota: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicequotas_service_quota")
	close({
		adjustable?:    bool
		arn?:           string
		default_value?: number
		global_quota?:  bool
		id?:            string
		quota_code?:    string
		quota_name?:    string
		region?:        string
		service_code!:  string
		service_name?:  string
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
		value?: number
	})
}
