package data

#aws_iam_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_role")
	close({
		arn?:                  string
		assume_role_policy?:   string
		create_date?:          string
		description?:          string
		id?:                   string
		max_session_duration?: number
		name!:                 string
		path?:                 string
		permissions_boundary?: string
		role_last_used?: [...close({
			last_used_date?: string
			region?:         string
		})]
		tags?: [string]: string
		unique_id?: string
	})
}
