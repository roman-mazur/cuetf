package res

#aws_lb_trust_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_trust_store")
	close({
		arn?:                                      string
		timeouts?:                                 #timeouts
		arn_suffix?:                               string
		ca_certificates_bundle_s3_bucket!:         string
		ca_certificates_bundle_s3_key!:            string
		ca_certificates_bundle_s3_object_version?: string
		id?:                                       string
		name?:                                     string
		name_prefix?:                              string
		region?:                                   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
