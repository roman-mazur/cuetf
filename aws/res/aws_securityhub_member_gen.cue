package res

#aws_securityhub_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_member")
	close({
		account_id!:    string
		email?:         string
		id?:            string
		invite?:        bool
		master_id?:     string
		member_status?: string
		region?:        string
	})
}
