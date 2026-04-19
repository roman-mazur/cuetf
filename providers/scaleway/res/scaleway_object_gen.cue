package res

#scaleway_object: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object")
	close({
		// The bucket's name or regional ID.
		bucket!: string

		// Content of the file to upload
		content?: string

		// Content of the file to upload, should be base64 encoded
		content_base64?: string

		// The standard MIME type of the object's content (e.g.,
		// 'application/json', 'text/plain'). This specifies how the
		// object should be interpreted by clients. See RFC 9110:
		// https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type
		content_type?: string
		timeouts?:     #timeouts

		// Path of the file to upload, defaults to an empty file
		file?: string

		// File hash to trigger upload
		hash?: string

		// Key of the object
		key!: string
		id?:  string

		// Map of object's metadata, only lower case keys are allowed
		metadata?: [string]: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Customer's encryption keys to encrypt data (SSE-C)
		sse_customer_key?: string

		// Specifies the Scaleway Object Storage class to which you want
		// the object to transition
		storage_class?: string

		// Map of object's tags
		tags?: [string]: string

		// Visibility of the object, public-read or private
		visibility?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
