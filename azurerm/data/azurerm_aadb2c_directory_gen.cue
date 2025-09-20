package data

#azurerm_aadb2c_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_aadb2c_directory")
	close({
		// The type of billing for the B2C tenant. Possible values
		// include: `MAU` or `Auths`.
		billing_type?: string

		// Location in which the B2C tenant is hosted and data resides.
		data_residency_location?: string

		// Domain name of the B2C tenant, including onmicrosoft.com
		// suffix.
		domain_name!: string

		// The date from which the billing type took effect. May not be
		// populated until after the first billing cycle.
		effective_start_date?: string
		id?:                   string
		resource_group_name!:  string
		timeouts?:             #timeouts

		// Billing SKU for the B2C tenant.
		sku_name?: string
		tags?: [string]: string

		// The Tenant ID for the B2C tenant.
		tenant_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
