package res

#aws_iot_billing_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_billing_group")
	close({
		arn?: string
		id?:  string
		metadata?: [...close({
			creation_date?: string
		})]
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
		properties?: matchN(1, [#properties, [...#properties]])
	})

	#properties: close({
		description?: string
	})
}
