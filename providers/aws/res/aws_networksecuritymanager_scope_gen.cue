package res

aws_networksecuritymanager_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networksecuritymanager_scope")
	close({
		scope_configuration?: matchN(1, [#scope_configuration, [...#scope_configuration]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		description?:  string
		is_published?: bool
		name!:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#scope_configuration: close({
		account_filter?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/account_filter", [..._#defs."/$defs/scope_configuration/$defs/account_filter"]])
		resource_scope?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope", [..._#defs."/$defs/scope_configuration/$defs/resource_scope"]])
	})

	_#defs: "/$defs/scope_configuration/$defs/account_filter": close({
		exclude?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/account_filter/$defs/exclude", [..._#defs."/$defs/scope_configuration/$defs/account_filter/$defs/exclude"]])
		include?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/account_filter/$defs/include", [..._#defs."/$defs/scope_configuration/$defs/account_filter/$defs/include"]])
		include_all?: bool
	})

	_#defs: "/$defs/scope_configuration/$defs/account_filter/$defs/exclude": close({
		account_ids?: [...string]
		organizational_units?: [...string]
	})

	_#defs: "/$defs/scope_configuration/$defs/account_filter/$defs/include": close({
		account_ids?: [...string]
		organizational_units?: [...string]
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope": close({
		exclude?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude"]])
		include?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include"]])
		include_all?:   bool
		resource_type!: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude": close({
		expression?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression"]])
		explicit_arns?: [...string]
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression": close({
		and?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/and", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/and"]])
		criteria?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/criteria", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/criteria"]])
		not?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/not", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/or", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/or"]])
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/and": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/and/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/and/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/and/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/criteria": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/criteria/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/criteria/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/criteria/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/not": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/not/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/not/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/not/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/or": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/or/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/or/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/exclude/$defs/expression/$defs/or/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include": close({
		expression?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression"]])
		explicit_arns?: [...string]
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression": close({
		and?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/and", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/and"]])
		criteria?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/criteria", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/criteria"]])
		not?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/not", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/or", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/or"]])
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/and": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/and/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/and/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/and/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/criteria": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/criteria/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/criteria/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/criteria/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/not": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/not/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/not/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/not/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/or": close({
		alb_config?: matchN(1, [_#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/or/$defs/alb_config", [..._#defs."/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/or/$defs/alb_config"]])
		tags?: [string]: string
	})

	_#defs: "/$defs/scope_configuration/$defs/resource_scope/$defs/include/$defs/expression/$defs/or/$defs/alb_config": close({
		ip_address_type?: string
		scheme?:          string
	})
}
