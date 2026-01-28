package res

#aws_vpclattice_domain_verification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpclattice_domain_verification")
	close({
		arn?:                string
		created_at?:         string
		domain_name!:        string
		id?:                 string
		last_verified_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		txt_record_name?:  string
		txt_record_value?: string
	})
}
