package res

#aws_iot_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_certificate")
	close({
		active!:            bool
		arn?:               string
		ca_certificate_id?: string
		ca_pem?:            string
		certificate_pem?:   string
		csr?:               string
		id?:                string
		private_key?:       string
		public_key?:        string
		region?:            string
	})
}
