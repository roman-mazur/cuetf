package res

#aws_cloud9_environment_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloud9_environment_membership")
	close({
		environment_id!: string
		id?:             string
		permissions!:    string
		region?:         string
		user_arn!:       string
		user_id?:        string
	})
}
