package res

import "list"

#scaleway_object_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object_bucket")
	close({
		cors_rule?: matchN(1, [#cors_rule, [...#cors_rule]])
		lifecycle_rule?: matchN(1, [#lifecycle_rule, [...#lifecycle_rule]])
		timeouts?: #timeouts
		versioning?: matchN(1, [#versioning, list.MaxItems(1) & [...#versioning]])

		// API URL of the bucket
		api_endpoint?: string

		// Endpoint of the bucket
		endpoint?: string

		// Delete objects in bucket
		force_destroy?: bool
		id?:            string

		// The name of the bucket
		name!: string

		// Enable object lock
		object_lock_enabled?: bool

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The tags associated with this bucket
		tags?: [string]: string
	})

	#cors_rule: close({
		// Allowed headers in the CORS rule
		allowed_headers?: [...string]

		// Allowed HTTP methods allowed in the CORS rule
		allowed_methods!: [...string]

		// Allowed origins allowed in the CORS rule
		allowed_origins!: [...string]

		// Exposed headers in the CORS rule
		expose_headers?: [...string]

		// Max age of the CORS rule
		max_age_seconds?: number
	})

	#lifecycle_rule: close({
		expiration?: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/expiration", list.MaxItems(1) & [..._#defs."/$defs/lifecycle_rule/$defs/expiration"]])
		transition?: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/transition", [..._#defs."/$defs/lifecycle_rule/$defs/transition"]])

		// Specifies the number of days after initiating a multipart
		// upload when the multipart upload must be completed
		abort_incomplete_multipart_upload_days?: number

		// Specifies if the configuration rule is Enabled or Disabled
		enabled!: bool

		// Unique identifier for the rule
		id?: string

		// The prefix identifying one or more objects to which the rule
		// applies
		prefix?: string

		// The tags associated with the bucket lifecycle
		tags?: [string]: string
	})

	#timeouts: close({
		default?: string
	})

	#versioning: close({
		// Enable versioning. Once you version-enable a bucket, it can
		// never return to an unversioned state
		enabled?: bool
	})

	_#defs: "/$defs/lifecycle_rule/$defs/expiration": close({
		// Specifies the number of days after object creation when the
		// specific rule action takes effect
		days!: number
	})

	_#defs: "/$defs/lifecycle_rule/$defs/transition": close({
		// Specifies the number of days after object creation when the
		// specific rule action takes effect
		days?: number

		// Specifies the Scaleway Object Storage class to which you want
		// the object to transition
		storage_class!: string
	})
}
