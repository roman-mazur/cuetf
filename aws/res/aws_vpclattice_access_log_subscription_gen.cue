package res

#aws_vpclattice_access_log_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_access_log_subscription")
	close({
		arn?:                      string
		destination_arn!:          string
		id?:                       string
		region?:                   string
		resource_arn?:             string
		resource_identifier!:      string
		service_network_log_type?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
