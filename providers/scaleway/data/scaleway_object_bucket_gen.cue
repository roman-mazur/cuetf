package data

#scaleway_object_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_object_bucket")
	close({
		// ACL of the bucket: either 'private', 'public-read',
		// 'public-read-write' or 'authenticated-read'.
		acl?: string

		// API URL of the bucket
		api_endpoint?: string

		// List of CORS rules
		cors_rule?: [...close({
			allowed_headers?: [...string]
			allowed_methods?: [...string]
			allowed_origins?: [...string]
			expose_headers?: [...string]
			max_age_seconds?: number
		})]

		// Endpoint of the bucket
		endpoint?: string

		// Delete objects in bucket
		force_destroy?: bool
		id?:            string

		// Lifecycle configuration is a set of rules that define actions
		// that Scaleway Object Storage applies to a group of objects
		lifecycle_rule?: [...close({
			abort_incomplete_multipart_upload_days?: number
			enabled?:                                bool
			expiration?: [...close({
				days?: number
			})]
			id?:     string
			prefix?: string
			tags?: [string]: string
			transition?: [...close({
				days?:          number
				storage_class?: string
			})]
		})]

		// The name of the bucket
		name?: string

		// Enable object lock
		object_lock_enabled?: bool

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The tags associated with this bucket
		tags?: [string]: string

		// Allow multiple versions of an object in the same bucket
		versioning?: [...close({
			enabled?: bool
		})]
	})
}
