package res

#aws_s3control_access_grants_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3control_access_grants_instance")
	close({
		access_grants_instance_arn?: string
		access_grants_instance_id?:  string
		account_id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		id?:                              string
		identity_center_application_arn?: string
		identity_center_arn?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
