package res

#aws_identitystore_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_group")
	description?:  string
	display_name!: string
	external_ids?: [...{
		id?:     string
		issuer?: string
	}]
	group_id?:          string
	id?:                string
	identity_store_id!: string
}
