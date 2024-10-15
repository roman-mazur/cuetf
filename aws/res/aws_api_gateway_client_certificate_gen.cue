package res

#aws_api_gateway_client_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_client_certificate")
	arn?:                     string
	created_date?:            string
	description?:             string
	expiration_date?:         string
	id?:                      string
	pem_encoded_certificate?: string
	tags?: [string]:     string
	tags_all?: [string]: string
}
