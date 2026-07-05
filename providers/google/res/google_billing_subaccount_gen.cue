package res

google_billing_subaccount: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_billing_subaccount")
	close({
		billing_account_id?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?:        string
		display_name!:           string
		id?:                     string
		master_billing_account!: string
		name?:                   string
		open?:                   bool
	})
}
