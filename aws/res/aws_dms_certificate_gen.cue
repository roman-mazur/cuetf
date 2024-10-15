package res

#aws_dms_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dms_certificate")
	certificate_arn?:    string
	certificate_id!:     string
	certificate_pem?:    string
	certificate_wallet?: string
	id?:                 string
	tags?: [string]:     string
	tags_all?: [string]: string
}
