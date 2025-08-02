package data

#aws_dms_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dms_certificate")
	close({
		certificate_arn?:           string
		certificate_creation_date?: string
		certificate_id!:            string
		certificate_owner?:         string
		certificate_pem?:           string
		certificate_wallet?:        string
		id?:                        string
		key_length?:                number
		region?:                    string
		signing_algorithm?:         string
		tags?: [string]: string
		valid_from_date?: string
		valid_to_date?:   string
	})
}
