package res

#azurerm_aadb2c_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_aadb2c_directory")
	close({
		// The type of billing for the B2C tenant. Possible values
		// include: `MAU` or `Auths`.
		billing_type?: string

		// Country code of the B2C tenant. See
		// https://aka.ms/B2CDataResidency for valid country codes.
		country_code?: string

		// Location in which the B2C tenant is hosted and data resides.
		// See https://aka.ms/B2CDataResidency for more information.
		data_residency_location!: string

		// The initial display name of the B2C tenant.
		display_name?: string

		// Domain name of the B2C tenant, including onmicrosoft.com
		// suffix.
		domain_name!: string

		// The date from which the billing type took effect. May not be
		// populated until after the first billing cycle.
		effective_start_date?: string
		id?:                   string

		// Billing SKU for the B2C tenant. See https://aka.ms/b2cBilling
		// for more information.
		sku_name!:            string
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string

		// The Tenant ID for the B2C tenant.
		tenant_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
