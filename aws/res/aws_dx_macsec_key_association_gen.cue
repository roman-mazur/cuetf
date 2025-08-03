package res

#aws_dx_macsec_key_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_macsec_key_association")
	close({
		cak?:           string
		ckn?:           string
		connection_id!: string
		id?:            string
		region?:        string
		secret_arn?:    string
		start_on?:      string
		state?:         string
	})
}
