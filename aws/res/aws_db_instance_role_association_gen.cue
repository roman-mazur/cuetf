package res

#aws_db_instance_role_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_instance_role_association")
	close({
		db_instance_identifier!: string
		timeouts?:               #timeouts
		feature_name!:           string
		id?:                     string
		region?:                 string
		role_arn!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
