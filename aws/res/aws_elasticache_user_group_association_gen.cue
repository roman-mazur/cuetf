package res

#aws_elasticache_user_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_user_group_association")
	close({
		id?:            string
		region?:        string
		user_group_id!: string
		user_id!:       string
		timeouts?:      #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
