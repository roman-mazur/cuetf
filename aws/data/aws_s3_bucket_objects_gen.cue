package data

#aws_s3_bucket_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_bucket_objects")
	close({
		common_prefixes?: [...string]
		delimiter?:     string
		encoding_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		fetch_owner?: bool
		id?:          string
		keys?: [...string]
		max_keys?: number
		owners?: [...string]
		prefix?:      string
		start_after?: string
		bucket!:      _
	})
}
