package res

#google_firestore_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firestore_document")
	close({
		// The collection ID, relative to database. For example: chatrooms
		// or chatrooms/my-document/private-messages.
		collection!: string

		// Creation timestamp in RFC3339 format.
		create_time?: string

		// The Firestore database id. Defaults to '"(default)"'.
		database?: string

		// The client-assigned document ID to use for this document during
		// creation.
		document_id!: string

		// The document's
		// [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents)
		// formated as a json string.
		fields!: string
		id?:     string

		// A server defined name for this document. Format:
		// 'projects/{{project_id}}/databases/{{database_id}}/documents/{{path}}/{{document_id}}'
		name?:     string
		timeouts?: #timeouts

		// A relative path to the collection this document exists within
		path?:    string
		project?: string

		// Last update timestamp in RFC3339 format.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
