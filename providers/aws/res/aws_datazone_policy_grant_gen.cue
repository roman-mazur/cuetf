package res

aws_datazone_policy_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_datazone_policy_grant")
	close({
		detail?: matchN(1, [#detail, [...#detail]])
		principal?: matchN(1, [#principal, [...#principal]])
		created_at?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		created_by?:        string
		domain_identifier!: string
		entity_identifier!: string
		entity_type!:       string
		grant_id?:          string
		policy_type!:       string
	})

	#detail: close({
		add_to_project_member_pool?: matchN(1, [_#defs."/$defs/detail/$defs/add_to_project_member_pool", [..._#defs."/$defs/detail/$defs/add_to_project_member_pool"]])
		create_asset_type?: matchN(1, [_#defs."/$defs/detail/$defs/create_asset_type", [..._#defs."/$defs/detail/$defs/create_asset_type"]])
		create_domain_unit?: matchN(1, [_#defs."/$defs/detail/$defs/create_domain_unit", [..._#defs."/$defs/detail/$defs/create_domain_unit"]])
		create_environment?: matchN(1, [_#defs."/$defs/detail/$defs/create_environment", [..._#defs."/$defs/detail/$defs/create_environment"]])
		create_environment_from_blueprint?: matchN(1, [_#defs."/$defs/detail/$defs/create_environment_from_blueprint", [..._#defs."/$defs/detail/$defs/create_environment_from_blueprint"]])
		create_environment_profile?: matchN(1, [_#defs."/$defs/detail/$defs/create_environment_profile", [..._#defs."/$defs/detail/$defs/create_environment_profile"]])
		create_form_type?: matchN(1, [_#defs."/$defs/detail/$defs/create_form_type", [..._#defs."/$defs/detail/$defs/create_form_type"]])
		create_glossary?: matchN(1, [_#defs."/$defs/detail/$defs/create_glossary", [..._#defs."/$defs/detail/$defs/create_glossary"]])
		create_project?: matchN(1, [_#defs."/$defs/detail/$defs/create_project", [..._#defs."/$defs/detail/$defs/create_project"]])
		create_project_from_project_profile?: matchN(1, [_#defs."/$defs/detail/$defs/create_project_from_project_profile", [..._#defs."/$defs/detail/$defs/create_project_from_project_profile"]])
		delegate_create_environment_profile?: matchN(1, [_#defs."/$defs/detail/$defs/delegate_create_environment_profile", [..._#defs."/$defs/detail/$defs/delegate_create_environment_profile"]])
		override_domain_unit_owners?: matchN(1, [_#defs."/$defs/detail/$defs/override_domain_unit_owners", [..._#defs."/$defs/detail/$defs/override_domain_unit_owners"]])
		override_project_owners?: matchN(1, [_#defs."/$defs/detail/$defs/override_project_owners", [..._#defs."/$defs/detail/$defs/override_project_owners"]])
		use_asset_type?: matchN(1, [_#defs."/$defs/detail/$defs/use_asset_type", [..._#defs."/$defs/detail/$defs/use_asset_type"]])
	})

	#principal: close({
		domain_unit?: matchN(1, [_#defs."/$defs/principal/$defs/domain_unit", [..._#defs."/$defs/principal/$defs/domain_unit"]])
		group?: matchN(1, [_#defs."/$defs/principal/$defs/group", [..._#defs."/$defs/principal/$defs/group"]])
		project?: matchN(1, [_#defs."/$defs/principal/$defs/project", [..._#defs."/$defs/principal/$defs/project"]])
		user?: matchN(1, [_#defs."/$defs/principal/$defs/user", [..._#defs."/$defs/principal/$defs/user"]])
	})

	_#defs: "/$defs/detail/$defs/add_to_project_member_pool": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/create_asset_type": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/create_domain_unit": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/create_environment": close({})

	_#defs: "/$defs/detail/$defs/create_environment_from_blueprint": close({})

	_#defs: "/$defs/detail/$defs/create_environment_profile": close({
		domain_unit_id?: string
	})

	_#defs: "/$defs/detail/$defs/create_form_type": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/create_glossary": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/create_project": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/create_project_from_project_profile": close({
		include_child_domain_units?: bool
		project_profiles?: [...string]
	})

	_#defs: "/$defs/detail/$defs/delegate_create_environment_profile": close({})

	_#defs: "/$defs/detail/$defs/override_domain_unit_owners": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/override_project_owners": close({
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/detail/$defs/use_asset_type": close({
		domain_unit_id?: string
	})

	_#defs: "/$defs/principal/$defs/domain_unit": close({
		all_domain_units_grant_filter?: matchN(1, [_#defs."/$defs/principal/$defs/domain_unit/$defs/all_domain_units_grant_filter", [..._#defs."/$defs/principal/$defs/domain_unit/$defs/all_domain_units_grant_filter"]])
		domain_unit_designation!: string
		domain_unit_identifier?:  string
	})

	_#defs: "/$defs/principal/$defs/domain_unit/$defs/all_domain_units_grant_filter": close({})

	_#defs: "/$defs/principal/$defs/group": close({
		group_identifier!: string
	})

	_#defs: "/$defs/principal/$defs/project": close({
		domain_unit_filter?: matchN(1, [_#defs."/$defs/principal/$defs/project/$defs/domain_unit_filter", [..._#defs."/$defs/principal/$defs/project/$defs/domain_unit_filter"]])
		project_designation!: string
		project_identifier?:  string
	})

	_#defs: "/$defs/principal/$defs/project/$defs/domain_unit_filter": close({
		domain_unit!:                string
		include_child_domain_units?: bool
	})

	_#defs: "/$defs/principal/$defs/user": close({
		all_users_grant_filter?: matchN(1, [_#defs."/$defs/principal/$defs/user/$defs/all_users_grant_filter", [..._#defs."/$defs/principal/$defs/user/$defs/all_users_grant_filter"]])
		user_identifier?: string
	})

	_#defs: "/$defs/principal/$defs/user/$defs/all_users_grant_filter": close({})
}
