package res

#aws_elastic_beanstalk_application_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_application_version")
	close({
		application!: string
		arn?:         string
		bucket!:      string
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		force_delete?: bool
		id?:           string
		key!:          string
		name!:         string
		process?:      bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
