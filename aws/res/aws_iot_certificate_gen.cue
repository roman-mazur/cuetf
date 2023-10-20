package res

#aws_iot_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_certificate")
	active:           bool
	arn?:             string
	ca_pem?:          string
	certificate_pem?: string
	csr?:             string
	id?:              string
	private_key?:     string
	public_key?:      string
}
