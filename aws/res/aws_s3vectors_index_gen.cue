package res

#aws_s3vectors_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3vectors_index")
	close({
		creation_time?:   string
		data_type!:       string
		dimension!:       number
		distance_metric!: string
		encryption_configuration?: [...close({
			kms_key_arn?: string
			sse_type?:    string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		metadata_configuration?: matchN(1, [#metadata_configuration, [...#metadata_configuration]])
		index_arn?:  string
		index_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		vector_bucket_name!: string
	})

	#metadata_configuration: close({
		non_filterable_metadata_keys!: [...string]
	})
}
