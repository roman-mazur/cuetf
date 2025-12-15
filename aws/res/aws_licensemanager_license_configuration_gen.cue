package res

#aws_licensemanager_license_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_licensemanager_license_configuration")
	close({
		arn?:           string
		description?:   string
		id?:            string
		license_count?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		license_count_hard_limit?: bool
		license_counting_type!:    string
		license_rules?: [...string]
		name!:             string
		owner_account_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
