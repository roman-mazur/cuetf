package data

#aws_iam_instance_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_iam_instance_profile")
	close({
		arn?:         string
		create_date?: string
		id?:          string
		name!:        string
		path?:        string
		role_arn?:    string
		role_id?:     string
		role_name?:   string
	})
}
