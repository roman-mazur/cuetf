package res

#aws_shield_drt_access_role_arn_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_drt_access_role_arn_association")
	close({
		timeouts?: #timeouts
		id?:       string
		role_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
