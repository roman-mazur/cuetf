package res

#aws_s3control_access_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_access_grant")
	close({
		access_grant_arn?:          string
		access_grant_id?:           string
		access_grants_location_id!: string
		account_id?:                string
		grant_scope?:               string
		id?:                        string
		access_grants_location_configuration?: matchN(1, [#access_grants_location_configuration, [...#access_grants_location_configuration]])
		permission!: string
		region?:     string
		grantee?: matchN(1, [#grantee, [...#grantee]])
		s3_prefix_type?: string
		tags?: [string]:     string
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
