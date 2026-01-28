package res

#aws_apprunner_custom_domain_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_apprunner_custom_domain_association")
	close({
		certificate_validation_records?: [...close({
			name?:   string
			status?: string
			type?:   string
			value?:  string
		})]
		dns_target?:  string
		domain_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		enable_www_subdomain?: bool
		id?:                   string
		service_arn!:          string
		status?:               string
	})
}
