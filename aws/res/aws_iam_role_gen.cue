package res

#aws_iam_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_role")
	close({
		arn?:                   string
		assume_role_policy!:    string
		create_date?:           string
		description?:           string
		force_detach_policies?: bool
		id?:                    string
		max_session_duration?:  number
		name?:                  string
		name_prefix?:           string
		path?:                  string
		permissions_boundary?:  string
		tags?: [string]: string
		inline_policy?: matchN(1, [#inline_policy, [...#inline_policy]])
		tags_all?: [string]: string
		unique_id?: string
	})

	#inline_policy: close({
		name?:   string
		policy?: string
	})
}
