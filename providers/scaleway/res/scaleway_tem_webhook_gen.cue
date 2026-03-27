package res

#scaleway_tem_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_tem_webhook")
	close({
		// Creation timestamp
		created_at?: string

		// The domain id
		domain_id!: string

		// List of event types
		event_types!: [...string]
		id?: string

		// The name of the webhook
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// SNS ARN
		sns_arn!: string

		// Last update timestamp
		updated_at?: string
	})
}
