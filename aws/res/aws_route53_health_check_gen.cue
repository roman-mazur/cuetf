package res

#aws_route53_health_check: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_health_check")
	arn?:                    string
	child_health_threshold?: number
	child_healthchecks?: [...string]
	cloudwatch_alarm_name?:           string
	cloudwatch_alarm_region?:         string
	disabled?:                        bool
	enable_sni?:                      bool
	failure_threshold?:               number
	fqdn?:                            string
	id?:                              string
	insufficient_data_health_status?: string
	invert_healthcheck?:              bool
	ip_address?:                      string
	measure_latency?:                 bool
	port?:                            number
	reference_name?:                  string
	regions?: [...string]
	request_interval?:    number
	resource_path?:       string
	routing_control_arn?: string
	search_string?:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!: string
}
