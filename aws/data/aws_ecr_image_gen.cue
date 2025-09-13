package data

#aws_ecr_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_image")
	close({
		id?:                  string
		image_digest?:        string
		image_pushed_at?:     number
		image_size_in_bytes?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		image_tag?: string
		image_tags?: [...string]
		image_uri?:       string
		most_recent?:     bool
		registry_id?:     string
		repository_name!: string
	})
}
