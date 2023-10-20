package res

#aws_transfer_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_ssh_key")
	body:      string
	id?:       string
	server_id: string
	user_name: string
}
