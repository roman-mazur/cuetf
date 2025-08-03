package res

#aws_rds_cluster_activity_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_cluster_activity_stream")
	close({
		engine_native_audit_fields_included?: bool
		id?:                                  string
		kinesis_stream_name?:                 string
		kms_key_id!:                          string
		mode!:                                string
		region?:                              string
		resource_arn!:                        string
	})
}
