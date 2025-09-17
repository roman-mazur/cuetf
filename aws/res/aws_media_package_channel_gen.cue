package res

#aws_media_package_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_media_package_channel")
	close({
		arn?:         string
		channel_id!:  string
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		hls_ingest?: [...close({
			ingest_endpoints?: [...close({
				password?: string
				url?:      string
				username?: string
			})]
		})]
		id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
