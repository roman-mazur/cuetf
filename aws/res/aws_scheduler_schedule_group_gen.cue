package res

#aws_scheduler_schedule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_scheduler_schedule_group")
	close({
		arn?:                    string
		creation_date?:          string
		id?:                     string
		last_modification_date?: string
		name?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		name_prefix?: string
		timeouts?:    #timeouts
		state?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
