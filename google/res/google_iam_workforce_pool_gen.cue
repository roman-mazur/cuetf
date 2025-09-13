package res

import "list"

#google_iam_workforce_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_workforce_pool")
	close({
		// A user-specified description of the pool. Cannot exceed 256
		// characters.
		description?: string

		// Whether the pool is disabled. You cannot use a disabled pool to
		// exchange tokens,
		// or use existing tokens to access resources. If the pool is
		// re-enabled, existing tokens grant access again.
		disabled?: bool

		// A user-specified display name of the pool in Google Cloud
		// Console. Cannot exceed 32 characters.
		display_name?: string

		// The location for the resource.
		location!: string
		id?:       string

		// Output only. The resource name of the pool.
		// Format: 'locations/{location}/workforcePools/{workforcePoolId}'
		name?: string

		// Immutable. The resource name of the parent. Format:
		// 'organizations/{org-id}'.
		parent!: string

		// Duration that the Google Cloud access tokens, console sign-in
		// sessions,
		// and 'gcloud' sign-in sessions from this pool are valid.
		// Must be greater than 15 minutes (900s) and less than 12 hours
		// (43200s).
		// If 'sessionDuration' is not configured, minted credentials have
		// a default duration of one hour (3600s).
		// A duration in seconds with up to nine fractional digits, ending
		// with ''s''. Example: "'3.5s'".
		session_duration?: string

		// Output only. The state of the pool.
		// * STATE_UNSPECIFIED: State unspecified.
		// * ACTIVE: The pool is active, and may be used in Google Cloud
		// policies.
		// * DELETED: The pool is soft-deleted. Soft-deleted pools are
		// permanently deleted
		// after approximately 30 days. You can restore a soft-deleted
		// pool using
		// [workforcePools.undelete](https://cloud.google.com/iam/docs/reference/rest/v1/locations.workforcePools/undelete#google.iam.admin.v1.WorkforcePools.UndeleteWorkforcePool).
		// You cannot reuse the ID of a soft-deleted pool until it is
		// permanently deleted.
		// While a pool is deleted, you cannot use it to exchange tokens,
		// or use
		// existing tokens to access resources. If the pool is undeleted,
		// existing
		// tokens grant access again.
		state?: string
		access_restrictions?: matchN(1, [#access_restrictions, list.MaxItems(1) & [...#access_restrictions]])
		timeouts?: #timeouts

		// The name of the pool. The ID must be a globally unique string
		// of 6 to 63 lowercase letters,
		// digits, or hyphens. It must start with a letter, and cannot
		// have a trailing hyphen.
		// The prefix 'gcp-' is reserved for use by Google, and may not be
		// specified.
		workforce_pool_id!: string
	})

	#access_restrictions: close({
		allowed_services?: matchN(1, [_#defs."/$defs/access_restrictions/$defs/allowed_services", [..._#defs."/$defs/access_restrictions/$defs/allowed_services"]])

		// Disable programmatic sign-in by disabling token issue via the
		// Security Token API endpoint.
		// See [Security Token Service
		// API](https://cloud.google.com/iam/docs/reference/sts/rest).
		disable_programmatic_signin?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/access_restrictions/$defs/allowed_services": close({
		// Domain name of the service.
		// Example: console.cloud.google
		domain?: string
	})
}
