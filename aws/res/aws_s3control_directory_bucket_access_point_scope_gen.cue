package res

#aws_s3control_directory_bucket_access_point_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_directory_bucket_access_point_scope")
	close({
		scope?: matchN(1, [#scope, [...#scope]])
		account_id!: string
		name!:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#scope: close({
		permissions?: [...string]
		prefixes?: [...string]
	})
}
