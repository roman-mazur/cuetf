package data

#aws_memorydb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_user")
	close({
		access_string?: string
		arn?:           string
		authentication_mode?: [...close({
			password_count?: number
			type?:           string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		id?:                     string
		minimum_engine_version?: string
		tags?: [string]: string
		user_name!: string
	})
}
