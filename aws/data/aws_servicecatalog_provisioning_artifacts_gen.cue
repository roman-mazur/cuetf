package data

#aws_servicecatalog_provisioning_artifacts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_servicecatalog_provisioning_artifacts")
	close({
		accept_language?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		id?:         string
		product_id!: string
		provisioning_artifact_details?: [...close({
			active?:       bool
			created_time?: string
			description?:  string
			guidance?:     string
			id?:           string
			name?:         string
			type?:         string
		})]
		timeouts?: #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
