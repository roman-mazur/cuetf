package data

#aws_elastic_beanstalk_hosted_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_hosted_zone")
	close({
		id?:     string
		region?: string
	})
}
