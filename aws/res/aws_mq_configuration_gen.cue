package res

#aws_mq_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mq_configuration")
	close({
		arn?:                     string
		authentication_strategy?: string
		data!:                    string
		description?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		engine_type!:     string
		engine_version!:  string
		id?:              string
		latest_revision?: number
		name!:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
