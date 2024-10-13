package res

#aws_transfer_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_certificate")
	active_date?:       string
	arn?:               string
	certificate!:       string
	certificate_chain?: string
	certificate_id?:    string
	description?:       string
	id?:                string
	inactive_date?:     string
	private_key?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	usage!: string
}
