package res

#aws_db_event_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_db_event_subscription")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		arn?:             string
		customer_aws_id?: string
		enabled?:         bool
		event_categories?: [...string]
		id?:          string
		name?:        string
		timeouts?:    #timeouts
		name_prefix?: string
		sns_topic!:   string
		source_ids?: [...string]
		source_type?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
