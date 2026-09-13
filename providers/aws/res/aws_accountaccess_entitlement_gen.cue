package res

aws_accountaccess_entitlement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_accountaccess_entitlement")
	close({
		entitlement?: matchN(1, [#entitlement, [...#entitlement]])
		application_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		entitlement_id?: string
	})

	#entitlement: close({
		principal_role?: matchN(1, [_#defs."/$defs/entitlement/$defs/principal_role", [..._#defs."/$defs/entitlement/$defs/principal_role"]])
	})

	_#defs: "/$defs/entitlement/$defs/principal_role": close({
		principal?: matchN(1, [_#defs."/$defs/entitlement/$defs/principal_role/$defs/principal", [..._#defs."/$defs/entitlement/$defs/principal_role/$defs/principal"]])
		account_id?:   string
		account_name?: string
		role_arn!:     string
	})

	_#defs: "/$defs/entitlement/$defs/principal_role/$defs/principal": close({
		identity_center?: matchN(1, [_#defs."/$defs/entitlement/$defs/principal_role/$defs/principal/$defs/identity_center", [..._#defs."/$defs/entitlement/$defs/principal_role/$defs/principal/$defs/identity_center"]])
	})

	_#defs: "/$defs/entitlement/$defs/principal_role/$defs/principal/$defs/identity_center": close({
		group_id?: string
		user_id?:  string
	})
}
