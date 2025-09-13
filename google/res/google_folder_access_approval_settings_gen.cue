package res

#google_folder_access_approval_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_folder_access_approval_settings")
	close({
		// The asymmetric crypto key version to use for signing approval
		// requests.
		// Empty active_key_version indicates that a Google-managed key
		// should be used for signing.
		// This property will be ignored if set by an ancestor of the
		// resource, and new non-empty values may not be set.
		active_key_version?: string

		// If the field is true, that indicates that an ancestor of this
		// Folder has set active_key_version.
		ancestor_has_active_key_version?: bool

		// If the field is true, that indicates that at least one service
		// is enrolled for Access Approval in one or more ancestors of
		// the Folder.
		enrolled_ancestor?: bool

		// ID of the folder of the access approval settings.
		folder_id!: string
		id?:        string

		// If the field is true, that indicates that there is some
		// configuration issue with the active_key_version
		// configured on this Folder (e.g. it doesn't exist or the Access
		// Approval service account doesn't have the
		// correct permissions on it, etc.) This key version is not
		// necessarily the effective key version at this level,
		// as key versions are inherited top-down.
		invalid_key_version?: bool
		enrolled_services?: matchN(1, [#enrolled_services, [_, ...] & [...#enrolled_services]])
		timeouts?: #timeouts

		// The resource name of the settings. Format is
		// "folders/{folder_id}/accessApprovalSettings"
		name?: string

		// A list of email addresses to which notifications relating to
		// approval requests should be sent.
		// Notifications relating to a resource will be sent to all emails
		// in the settings of ancestor
		// resources of that resource. A maximum of 50 email addresses are
		// allowed.
		notification_emails?: [...string]
	})

	#enrolled_services: close({
		// The product for which Access Approval will be enrolled. Allowed
		// values are listed (case-sensitive):
		// * all
		// * App Engine
		// * BigQuery
		// * Cloud Bigtable
		// * Cloud Key Management Service
		// * Compute Engine
		// * Cloud Dataflow
		// * Cloud Identity and Access Management
		// * Cloud Pub/Sub
		// * Cloud Storage
		// * Persistent Disk
		//
		// Note: These values are supported as input, but considered a
		// legacy format:
		// * all
		// * appengine.googleapis.com
		// * bigquery.googleapis.com
		// * bigtable.googleapis.com
		// * cloudkms.googleapis.com
		// * compute.googleapis.com
		// * dataflow.googleapis.com
		// * iam.googleapis.com
		// * pubsub.googleapis.com
		// * storage.googleapis.com
		cloud_product!: string

		// The enrollment level of the service. Default value: "BLOCK_ALL"
		// Possible values: ["BLOCK_ALL"]
		enrollment_level?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
