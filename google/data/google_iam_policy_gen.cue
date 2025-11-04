package data

import "list"

#google_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_policy")
	close({
		audit_config?: matchN(1, [#audit_config, [...#audit_config]])
		binding?: matchN(1, [#binding, [...#binding]])
		id?:          string
		policy_data?: string
	})

	#audit_config: close({
		audit_log_configs!: matchN(1, [_#defs."/$defs/audit_config/$defs/audit_log_configs", [_, ...] & [..._#defs."/$defs/audit_config/$defs/audit_log_configs"]])
		service!: string
	})

	#binding: close({
		condition?: matchN(1, [_#defs."/$defs/binding/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/binding/$defs/condition"]])
		members!: [...string]
		role!: string
	})

	_#defs: "/$defs/audit_config/$defs/audit_log_configs": close({
		exempted_members?: [...string]
		log_type!: string
	})

	_#defs: "/$defs/binding/$defs/condition": close({
		description?: string
		expression!:  string
		title!:       string
	})
}
