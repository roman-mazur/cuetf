package res

#aws_devicefarm_device_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_device_pool")
	close({
		arn?:         string
		description?: string
		id?:          string
		max_devices?: number
		name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		project_arn!: string
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#rule: close({
		attribute?: string
		operator?:  string
		value?:     string
	})
}
