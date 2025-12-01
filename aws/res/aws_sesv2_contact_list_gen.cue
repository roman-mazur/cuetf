package res

#aws_sesv2_contact_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sesv2_contact_list")
	close({
		arn?:               string
		contact_list_name!: string
		created_timestamp?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		description?:            string
		id?:                     string
		last_updated_timestamp?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		topic?: matchN(1, [#topic, [...#topic]])
	})

	#topic: close({
		default_subscription_status!: string
		description?:                 string
		display_name!:                string
		topic_name!:                  string
	})
}
