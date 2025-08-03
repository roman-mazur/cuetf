package res

#aws_iam_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_user")
	close({
		arn?:                  string
		force_destroy?:        bool
		id?:                   string
		name!:                 string
		path?:                 string
		permissions_boundary?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		unique_id?: string
	})
}
