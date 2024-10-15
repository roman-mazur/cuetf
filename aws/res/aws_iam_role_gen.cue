package res

#aws_iam_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_role")
	arn?:                   string
	assume_role_policy!:    string
	create_date?:           string
	description?:           string
	force_detach_policies?: bool
	id?:                    string
	managed_policy_arns?: [...string]
	max_session_duration?: number
	name?:                 string
	name_prefix?:          string
	path?:                 string
	permissions_boundary?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	unique_id?: string
	inline_policy?: #inline_policy | [...#inline_policy]

	#inline_policy: {
		name?:   string
		policy?: string
	}
}
