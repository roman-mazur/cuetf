package res

#aws_appsync_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_domain_name")
	close({
		appsync_domain_name?: string
		certificate_arn!:     string
		description?:         string
		domain_name!:         string
		hosted_zone_id?:      string
		id?:                  string
		region?:              string
	})
}
