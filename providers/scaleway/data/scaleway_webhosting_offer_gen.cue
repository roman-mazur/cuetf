package data

scaleway_webhosting_offer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_webhosting_offer")
	close({
		// Billing operation path
		billing_operation_path?: string

		// Name of the control panel (Cpanel or Plesk)
		control_panel?: string

		// The regional ID of the offer
		id?: string

		// Exact name of the desired offer
		name?: string

		// The offer details of the hosting
		offer?: matchN(1, [close({
			// Whether or not the offer is available
			available?: bool

			// List of options available for a particular offer
			options?: matchN(1, [close({
				// Billing operation path
				billing_operation_path?: string

				// Current value
				current_value?: number

				// ID of the option
				id?: string

				// The maximum allowed value of this option
				max_value?: number

				// Minimum value for this option
				min_value?: number

				// Name of the option
				name?: string

				// Price of the option
				price?: string

				// Quota warning
				quota_warning?: string
			}), [...close({
				// Billing operation path
				billing_operation_path?: string

				// Current value
				current_value?: number

				// ID of the option
				id?: string

				// The maximum allowed value of this option
				max_value?: number

				// Minimum value for this option
				min_value?: number

				// Name of the option
				name?: string

				// Price of the option
				price?: string

				// Quota warning
				quota_warning?: string
			})]])

			// Billing operation path
			billing_operation_path?: string

			// Name of the control panel
			control_panel_name?: string

			// Whether this offer is in end of life
			end_of_life?: bool

			// ID of the offer
			id?: string

			// Name of the offer
			name?: string

			// Price of the offer
			price?: string

			// Quota warning for this offer
			quota_warning?: string
		}), [...close({
			// Whether or not the offer is available
			available?: bool

			// List of options available for a particular offer
			options?: matchN(1, [close({
				// Billing operation path
				billing_operation_path?: string

				// Current value
				current_value?: number

				// ID of the option
				id?: string

				// The maximum allowed value of this option
				max_value?: number

				// Minimum value for this option
				min_value?: number

				// Name of the option
				name?: string

				// Price of the option
				price?: string

				// Quota warning
				quota_warning?: string
			}), [...close({
				// Billing operation path
				billing_operation_path?: string

				// Current value
				current_value?: number

				// ID of the option
				id?: string

				// The maximum allowed value of this option
				max_value?: number

				// Minimum value for this option
				min_value?: number

				// Name of the option
				name?: string

				// Price of the option
				price?: string

				// Quota warning
				quota_warning?: string
			})]])

			// Billing operation path
			billing_operation_path?: string

			// Name of the control panel
			control_panel_name?: string

			// Whether this offer is in end of life
			end_of_life?: bool

			// ID of the offer
			id?: string

			// Name of the offer
			name?: string

			// Price of the offer
			price?: string

			// Quota warning for this offer
			quota_warning?: string
		})]])

		// ID of the desired offer
		offer_id?: string

		// Price of the offer
		price?: string

		// Product list. Deprecated: use the `offer` field instead.
		product?: matchN(1, [close({
			// Limit number of databases
			databases_quota?: number

			// Limit number of email accounts
			email_accounts_quota?: number

			// Limit quantity of email storage in gigabytes
			email_storage_quota?: number

			// Limit quantity of hosting storage in gigabytes
			hosting_storage_quota?: number

			// Name of the product
			name?: string

			// Whether or not the product is in the offer
			option?: bool

			// Limit quantity of memory in gigabytes
			ram?: number

			// Whether or not support is included
			support_included?: bool

			// Limit number of virtual CPU
			v_cpu?: number
		}), [...close({
			// Limit number of databases
			databases_quota?: number

			// Limit number of email accounts
			email_accounts_quota?: number

			// Limit quantity of email storage in gigabytes
			email_storage_quota?: number

			// Limit quantity of hosting storage in gigabytes
			hosting_storage_quota?: number

			// Name of the product
			name?: string

			// Whether or not the product is in the offer
			option?: bool

			// Limit quantity of memory in gigabytes
			ram?: number

			// Whether or not support is included
			support_included?: bool

			// Limit number of virtual CPU
			v_cpu?: number
		})]])

		// The region of the offer
		region?: string
	})
}
