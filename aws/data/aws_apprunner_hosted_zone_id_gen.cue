package data

#aws_apprunner_hosted_zone_id: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_hosted_zone_id")
	close({
		id?:     string
		region?: string
	})
}
