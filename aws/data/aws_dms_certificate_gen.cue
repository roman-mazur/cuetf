package data

#aws_dms_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_certificate")
	certificate_arn?:           string
	certificate_creation_date?: string
	certificate_id:             string
	certificate_owner?:         string
	certificate_pem?:           string
	certificate_wallet?:        string
	id?:                        string
	key_length?:                number
	signing_algorithm?:         string
	tags?: [string]: string
	valid_from_date?: string
	valid_to_date?:   string
}