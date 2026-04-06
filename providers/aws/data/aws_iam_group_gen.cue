package data

#aws_iam_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_iam_group")
	close({
		arn?:        string
		group_id?:   string
		group_name!: string
		id?:         string
		path?:       string
		users?: [...close({
			arn?:       string
			path?:      string
			user_id?:   string
			user_name?: string
		})]
	})
}
