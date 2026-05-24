package res

#google_essential_contacts_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_essential_contacts_contact")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The email address to send notifications to. This does not need
		// to be a Google account.
		email!: string
		id?:    string

		// The preferred language for notifications, as a ISO 639-1
		// language code. See Supported languages for a list of supported
		// languages.
		language_tag!: string

		// The identifier for the contact. Format:
		// {resourceType}/{resource_id}/contacts/{contact_id}
		name?: string

		// The categories of notifications that the contact will receive
		// communications for.
		notification_category_subscriptions!: [...string]

		// The resource to save this contact for. Format:
		// organizations/{organization_id}, folders/{folder_id} or
		// projects/{project_id}
		parent!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
