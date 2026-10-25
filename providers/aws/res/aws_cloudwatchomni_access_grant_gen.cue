package res

aws_cloudwatchomni_access_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatchomni_access_grant")
	close({
		principal?: matchN(1, [#principal, [...#principal]])
		scoped_action?: matchN(1, [#scoped_action, [...#scoped_action]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		domain_id!:  string
		grant_id?:   string
		grant_type?: string
		name!:       string
		permission!: string
		space_id!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#principal: close({
		principal_attribute?: matchN(1, [_#defs."/$defs/principal/$defs/principal_attribute", [..._#defs."/$defs/principal/$defs/principal_attribute"]])
		principal_id?:   string
		principal_type!: string
	})

	#scoped_action: close({
		resource?: matchN(1, [_#defs."/$defs/scoped_action/$defs/resource", [..._#defs."/$defs/scoped_action/$defs/resource"]])
		actions!: [...string]
	})

	_#defs: "/$defs/principal/$defs/principal_attribute": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/scoped_action/$defs/resource": close({
		row_scope_group?: matchN(1, [_#defs."/$defs/scoped_action/$defs/resource/$defs/row_scope_group", [..._#defs."/$defs/scoped_action/$defs/resource/$defs/row_scope_group"]])
		resource_arns?: [...string]
		resource_type!: string
		signal_types?: [...string]
		tags?: [string]: string
	})

	_#defs: "/$defs/scoped_action/$defs/resource/$defs/row_scope_group": close({
		row_scope?: matchN(1, [_#defs."/$defs/scoped_action/$defs/resource/$defs/row_scope_group/$defs/row_scope", [..._#defs."/$defs/scoped_action/$defs/resource/$defs/row_scope_group/$defs/row_scope"]])
	})

	_#defs: "/$defs/scoped_action/$defs/resource/$defs/row_scope_group/$defs/row_scope": close({
		field!:    string
		operator!: string
		values!: [...string]
	})
}
