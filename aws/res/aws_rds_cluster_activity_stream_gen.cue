package res

#aws_rds_cluster_activity_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_rds_cluster_activity_stream")
	close({
		engine_native_audit_fields_included?: bool
		id?:                                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		kinesis_stream_name?: string
		kms_key_id!:          string
		mode!:                string
		resource_arn!:        string
	})
}
