package res

#aws_connect_phone_number: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_connect_phone_number")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		arn?:          string
		country_code!: string
		description?:  string
		id?:           string
		phone_number?: string
		timeouts?:     #timeouts
		prefix?:       string
		status?: [...close({
			message?: string
			status?:  string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
		target_arn!: string
		type!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
