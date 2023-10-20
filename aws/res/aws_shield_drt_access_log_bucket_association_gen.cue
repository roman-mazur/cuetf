package res

#aws_shield_drt_access_log_bucket_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_shield_drt_access_log_bucket_association")
	log_bucket:              string
	role_arn_association_id: string
	timeouts?:               #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
