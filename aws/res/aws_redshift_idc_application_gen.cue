package res

#aws_redshift_idc_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_idc_application")
	close({
		application_type?: string
		iam_role_arn!:     string
		idc_display_name!: string
		idc_instance_arn!: string
		authorized_token_issuer?: matchN(1, [#authorized_token_issuer, [...#authorized_token_issuer]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                        string
		idc_managed_application_arn?:   string
		identity_namespace?:            string
		redshift_idc_application_arn?:  string
		redshift_idc_application_name!: string
		tags?: [string]: string
		service_integration?: matchN(1, [#service_integration, [...#service_integration]])
		tags_all?: [string]: string
	})

	#authorized_token_issuer: close({
		authorized_audiences_list?: [...string]
		trusted_token_issuer_arn?: string
	})

	#service_integration: close({
		lake_formation?: matchN(1, [_#defs."/$defs/service_integration/$defs/lake_formation", [..._#defs."/$defs/service_integration/$defs/lake_formation"]])
		redshift?: matchN(1, [_#defs."/$defs/service_integration/$defs/redshift", [..._#defs."/$defs/service_integration/$defs/redshift"]])
		s3_access_grants?: matchN(1, [_#defs."/$defs/service_integration/$defs/s3_access_grants", [..._#defs."/$defs/service_integration/$defs/s3_access_grants"]])
	})

	_#defs: "/$defs/service_integration/$defs/lake_formation": close({
		lake_formation_query?: matchN(1, [_#defs."/$defs/service_integration/$defs/lake_formation/$defs/lake_formation_query", [..._#defs."/$defs/service_integration/$defs/lake_formation/$defs/lake_formation_query"]])
	})

	_#defs: "/$defs/service_integration/$defs/lake_formation/$defs/lake_formation_query": close({
		authorization!: string
	})

	_#defs: "/$defs/service_integration/$defs/redshift": close({
		connect?: matchN(1, [_#defs."/$defs/service_integration/$defs/redshift/$defs/connect", [..._#defs."/$defs/service_integration/$defs/redshift/$defs/connect"]])
	})

	_#defs: "/$defs/service_integration/$defs/redshift/$defs/connect": close({
		authorization!: string
	})

	_#defs: "/$defs/service_integration/$defs/s3_access_grants": close({
		read_write_access?: matchN(1, [_#defs."/$defs/service_integration/$defs/s3_access_grants/$defs/read_write_access", [..._#defs."/$defs/service_integration/$defs/s3_access_grants/$defs/read_write_access"]])
	})

	_#defs: "/$defs/service_integration/$defs/s3_access_grants/$defs/read_write_access": close({
		authorization!: string
	})
}
