package res

#aws_sesv2_contact_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_contact_list")
	close({
		arn?: string
		topic?: matchN(1, [#topic, [...#topic]])
		contact_list_name!:      string
		created_timestamp?:      string
		description?:            string
		id?:                     string
		last_updated_timestamp?: string
		region?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#topic: close({
		default_subscription_status!: string
		description?:                 string
		display_name!:                string
		topic_name!:                  string
	})
}
