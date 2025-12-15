package data

#aws_servicecatalog_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_servicecatalog_product")
	close({
		accept_language?:  string
		arn?:              string
		created_time?:     string
		description?:      string
		distributor?:      string
		has_default_path?: bool
		id!:               string
		name?:             string
		timeouts?:         #timeouts
		owner?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		status?:              string
		support_description?: string
		support_email?:       string
		support_url?:         string
		tags?: [string]: string
		type?: string
	})

	#timeouts: close({
		read?: string
	})
}
