package res

#aws_quicksight_vpc_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_vpc_connection")
	close({
		arn?:                 string
		availability_status?: string
		aws_account_id?:      string
		dns_resolvers?: [...string]
		id?:       string
		name!:     string
		region?:   string
		role_arn!: string
		timeouts?: #timeouts
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_connection_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
