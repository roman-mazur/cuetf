package res

#aws_lb_trust_store_revocation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_trust_store_revocation")
	close({
		id?:                            string
		timeouts?:                      #timeouts
		region?:                        string
		revocation_id?:                 number
		revocations_s3_bucket!:         string
		revocations_s3_key!:            string
		revocations_s3_object_version?: string
		trust_store_arn!:               string
	})

	#timeouts: close({
		create?: string
	})
}
