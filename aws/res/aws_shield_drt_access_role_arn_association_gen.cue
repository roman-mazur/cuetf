package res

#aws_shield_drt_access_role_arn_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_shield_drt_access_role_arn_association")
	role_arn:  string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
