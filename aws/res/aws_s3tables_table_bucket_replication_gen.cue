package res

#aws_s3tables_table_bucket_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3tables_table_bucket_replication")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		role!:             string
		table_bucket_arn!: string
		version_token?:    string
		rule?: matchN(1, [#rule, [...#rule]])
	})

	#rule: close({
		destination?: matchN(1, [_#defs."/$defs/rule/$defs/destination", [..._#defs."/$defs/rule/$defs/destination"]])
	})

	_#defs: "/$defs/rule/$defs/destination": close({
		destination_table_bucket_arn!: string
	})
}
