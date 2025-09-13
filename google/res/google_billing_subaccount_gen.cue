package res

#google_billing_subaccount: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_billing_subaccount")
	close({
		billing_account_id?:     string
		deletion_policy?:        string
		display_name!:           string
		id?:                     string
		master_billing_account!: string
		name?:                   string
		open?:                   bool
	})
}
