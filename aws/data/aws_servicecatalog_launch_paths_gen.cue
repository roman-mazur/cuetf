package data

#aws_servicecatalog_launch_paths: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_servicecatalog_launch_paths")
	close({
		accept_language?: string
		id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		product_id!: string
		summaries?: [...close({
			constraint_summaries?: [...close({
				description?: string
				type?:        string
			})]
			name?:    string
			path_id?: string
			tags?: [string]: string
		})]
		timeouts?: #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
