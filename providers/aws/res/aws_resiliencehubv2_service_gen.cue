package res

aws_resiliencehubv2_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_resiliencehubv2_service")
	close({
		associated_system?: matchN(1, [#associated_system, [...#associated_system]])
		permission_model?: matchN(1, [#permission_model, [...#permission_model]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		dependency_discovery?: string
		description?:          string
		kms_key_id?:           string
		name!:                 string
		policy_arn?:           string
		regions!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#associated_system: close({
		system_arn!: string
	})

	#permission_model: close({
		cross_account_role?: matchN(1, [_#defs."/$defs/permission_model/$defs/cross_account_role", [..._#defs."/$defs/permission_model/$defs/cross_account_role"]])
		invoker_role_name!: string
	})

	_#defs: "/$defs/permission_model/$defs/cross_account_role": close({
		cross_account_role_arn!: string
		external_id?:            string
	})
}
