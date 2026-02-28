package res

#aws_networkmanager_prefix_list_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_prefix_list_association")
	close({
		core_network_id!:   string
		prefix_list_alias!: string
		prefix_list_arn!:   string
	})
}
