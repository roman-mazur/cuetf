package data

aws_accountaccess_entitlements: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_accountaccess_entitlements")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		application_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		entitlements?: [...close({
			created_at?: string
			entitlement?: [...close({
				principal_role?: [...close({
					account_id?:   string
					account_name?: string
					principal?: [...close({
						identity_center?: [...close({
							group_id?: string
							user_id?:  string
						})]
					})]
					role_arn?: string
				})]
			})]
			entitlement_id?: string
		})]
	})

	#filter: close({
		principal_role?: matchN(1, [_#defs."/$defs/filter/$defs/principal_role", [..._#defs."/$defs/filter/$defs/principal_role"]])
	})

	_#defs: "/$defs/filter/$defs/principal_role": close({
		principal?: matchN(1, [_#defs."/$defs/filter/$defs/principal_role/$defs/principal", [..._#defs."/$defs/filter/$defs/principal_role/$defs/principal"]])
		account_id?: string
		role_arn?:   string
	})

	_#defs: "/$defs/filter/$defs/principal_role/$defs/principal": close({
		identity_center?: matchN(1, [_#defs."/$defs/filter/$defs/principal_role/$defs/principal/$defs/identity_center", [..._#defs."/$defs/filter/$defs/principal_role/$defs/principal/$defs/identity_center"]])
	})

	_#defs: "/$defs/filter/$defs/principal_role/$defs/principal/$defs/identity_center": close({
		group_id?: string
		user_id?:  string
	})
}
