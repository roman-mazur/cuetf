package data

#aws_ssoadmin_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application")
	close({
		application_account?: string
		application_arn!:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		application_provider_arn?: string
		description?:              string
		id?:                       string
		instance_arn?:             string
		name?:                     string
		portal_options?: [...close({
			sign_in_options?: [...close({
				application_url?: string
				origin?:          string
			})]
			visibility?: string
		})]
		status?: string
	})
}
