package res

#azurerm_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_subscription")
	close({
		// The Alias Name of the subscription. If omitted a new UUID will
		// be generated for this property.
		alias?: string

		// The GUID of the Subscription.
		subscription_id?:  string
		billing_scope_id?: string

		// The Display Name for the Subscription.
		subscription_name!: string

		// The Tenant ID to which the subscription belongs
		tenant_id?: string
		id?:        string

		// The workload type for the Subscription. Possible values are
		// `Production` (default) and `DevTest`.
		workload?: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
