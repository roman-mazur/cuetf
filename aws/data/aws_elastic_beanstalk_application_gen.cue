package data

#aws_elastic_beanstalk_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_elastic_beanstalk_application")
	close({
		appversion_lifecycle?: [...close({
			delete_source_from_s3?: bool
			max_age_in_days?:       number
			max_count?:             number
			service_role?:          string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		arn?:         string
		description?: string
		id?:          string
		name!:        string
	})
}
