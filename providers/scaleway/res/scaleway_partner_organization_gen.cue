package res

scaleway_partner_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_partner_organization")
	close({
		// Date of organization creation.
		created_at?: string

		// A custom ID for the customer in your own infrastructure.
		customer_id!: string

		// The email of the new organization owner.
		email!: string

		// The ID of the organization resource.
		id?: string

		// Human-readable reason if the organization is locked.
		lock_reason_message?: string

		// Date of lock.
		locked_at?: string

		// Originator of the lock (partner or scaleway).
		locked_by?: string

		// The name of the organization you want to create. Usually the company name.
		organization_name!: string

		// The first name of the new organization owner.
		owner_firstname!: string

		// The last name of the new organization owner.
		owner_lastname!: string

		// Your personal partner_id. This is the same as your Organization ID.
		partner_id?: string

		// The phone number of the new organization owner.
		phone_number?: string

		// The current status of the organization.
		status?: string
	})
}
