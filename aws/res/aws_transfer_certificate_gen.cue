package res

#aws_transfer_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_certificate")
	close({
		active_date?:       string
		arn?:               string
		certificate!:       string
		certificate_chain?: string
		certificate_id?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		description?:   string
		id?:            string
		inactive_date?: string
		private_key?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		usage!: string
	})
}
