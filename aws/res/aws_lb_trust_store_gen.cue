package res

#aws_lb_trust_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_trust_store")
	close({
		arn?:                              string
		arn_suffix?:                       string
		ca_certificates_bundle_s3_bucket!: string
		ca_certificates_bundle_s3_key!:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                   string
		ca_certificates_bundle_s3_object_version?: string
		timeouts?:                                 #timeouts
		id?:                                       string
		name?:                                     string
		name_prefix?:                              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
