package data

#aws_s3_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_objects")
	close({
		bucket!: string
		common_prefixes?: [...string]
		delimiter?:     string
		encoding_type?: string
		fetch_owner?:   bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		keys?: [...string]
		max_keys?: number
		owners?: [...string]
		prefix?:          string
		request_charged?: string
		request_payer?:   string
		start_after?:     string
	})
}
