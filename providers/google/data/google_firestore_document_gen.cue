package data

#google_firestore_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_firestore_document")
	close({
		// The collection ID, relative to database. For example: chatrooms
		// or chatrooms/my-document/private-messages.
		collection!: string

		// Creation timestamp in RFC3339 format.
		create_time?: string

		// The Firestore database id. Defaults to '"(default)"'.
		database!: string

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

		// The client-assigned document ID to use for this document during
		// creation.
		document_id!: string

		// The document's
		// [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents)
		// formated as a json string.
		fields?: string
		id?:     string

		// A server defined name for this document. Format:
		// 'projects/{{project_id}}/databases/{{database_id}}/documents/{{path}}/{{document_id}}'
		name?: string

		// A relative path to the collection this document exists within
		path?:    string
		project?: string

		// Last update timestamp in RFC3339 format.
		update_time?: string
	})
}
