package res

#aws_datasync_location_object_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_object_storage")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		access_key?: string
		agent_arns?: [...string]
		arn?:                string
		bucket_name!:        string
		id?:                 string
		secret_key?:         string
		server_certificate?: string
		server_hostname!:    string
		server_port?:        number
		server_protocol?:    string
		subdirectory?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?: string
	})
}
