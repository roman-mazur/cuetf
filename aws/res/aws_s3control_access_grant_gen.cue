package res

#aws_s3control_access_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3control_access_grant")
	close({
		access_grant_arn?:          string
		access_grant_id?:           string
		access_grants_location_id!: string
		account_id?:                string
		access_grants_location_configuration?: matchN(1, [#access_grants_location_configuration, [...#access_grants_location_configuration]])
		grant_scope?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		id?:             string
		permission!:     string
		s3_prefix_type?: string
		tags?: [string]: string
		grantee?: matchN(1, [#grantee, [...#grantee]])
		tags_all?: [string]: string
	})

	#access_grants_location_configuration: close({
		s3_sub_prefix?: string
	})

	#grantee: close({
		grantee_identifier!: string
		grantee_type!:       string
	})
}
