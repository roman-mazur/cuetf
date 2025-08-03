package res

#aws_transfer_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_ssh_key")
	close({
		body!:       string
		id?:         string
		region?:     string
		server_id!:  string
		ssh_key_id?: string
		user_name!:  string
	})
}
