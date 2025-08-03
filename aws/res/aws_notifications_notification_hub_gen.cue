package res

#aws_notifications_notification_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_notifications_notification_hub")
	close({
		notification_hub_region!: string
		timeouts?:                #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
