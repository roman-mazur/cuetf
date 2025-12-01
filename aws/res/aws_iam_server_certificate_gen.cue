package res

#aws_iam_server_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iam_server_certificate")
	close({
		arn?:               string
		certificate_body!:  string
		certificate_chain?: string
		expiration?:        string
		id?:                string
		name?:              string
		name_prefix?:       string
		path?:              string
		timeouts?:          #timeouts
		private_key!:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		upload_date?: string
	})

	#timeouts: close({
		delete?: string
	})
}
