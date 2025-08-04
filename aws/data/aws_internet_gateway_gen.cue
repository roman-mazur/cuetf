package data

#aws_internet_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_internet_gateway")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		attachments?: [...close({
			state?:  string
			vpc_id?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		id?:                  string
		internet_gateway_id?: string
		owner_id?:            string
		timeouts?:            #timeouts
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
