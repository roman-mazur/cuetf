package res

#aws_finspace_kx_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_user")
	close({
		timeouts?:       #timeouts
		arn?:            string
		environment_id!: string
		iam_role!:       string
		id?:             string
		name!:           string
		region?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
