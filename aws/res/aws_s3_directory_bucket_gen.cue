package res

#aws_s3_directory_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_directory_bucket")
	close({
		arn?:             string
		bucket!:          string
		data_redundancy?: string
		force_destroy?:   bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
		location?: matchN(1, [#location, [...#location]])
	})

	#location: close({
		name!: string
		type?: string
	})
}
