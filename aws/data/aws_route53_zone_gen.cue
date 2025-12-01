package data

#aws_route53_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_route53_zone")
	close({
		arn?:                        string
		caller_reference?:           string
		comment?:                    string
		id?:                         string
		linked_service_description?: string
		linked_service_principal?:   string
		name?:                       string
		name_servers?: [...string]
		primary_name_server?:       string
		private_zone?:              bool
		resource_record_set_count?: number
		tags?: [string]: string
		vpc_id?:  string
		zone_id?: string
	})
}
