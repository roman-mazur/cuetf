package res

#aws_s3control_access_grants_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_access_grants_location")
	close({
		access_grants_location_arn?: string
		access_grants_location_id?:  string
		account_id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		iam_role_arn!:   string
		id?:             string
		location_scope!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
