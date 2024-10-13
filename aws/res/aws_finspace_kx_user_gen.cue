package res

#aws_finspace_kx_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_finspace_kx_user")
	arn?:            string
	environment_id!: string
	iam_role!:       string
	id?:             string
	name!:           string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
