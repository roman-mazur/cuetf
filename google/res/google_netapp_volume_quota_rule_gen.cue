package res

#google_netapp_volume_quota_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_netapp_volume_quota_rule")
	close({
		// Create time of the quota rule. A timestamp in RFC3339 UTC
		// "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// Description for the quota rule.
		description?: string

		// The maximum allowed capacity in MiB.
		disk_limit_mib!: number

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key value pairs of the quota rule. Example: '{
		// "owner": "Bob", "department": "finance", "purpose": "testing"
		// }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Loction of the quotaRule. QuotaRules are child resources of
		// volumes and live in the same location.
		location?: string

		// The resource name of the quotaRule.
		name!: string

		// The state of the quota rule. Possible Values :
		// [STATE_UNSPECIFIED, CREATING, UPDATING, READY, DELETING,
		// ERROR]
		state?:   string
		project?: string

		// State details of the quota rule
		state_details?: string
		timeouts?:      #timeouts

		// The quota rule applies to the specified user or group.
		// Valid targets for volumes with NFS protocol enabled:
		// - UNIX UID for individual user quota
		// - UNIX GID for individual group quota
		// Valid targets for volumes with SMB protocol enabled:
		// - Windows SID for individual user quota
		// Leave empty for default quotas
		target?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Types of Quota Rule. Possible values: ["INDIVIDUAL_USER_QUOTA",
		// "INDIVIDUAL_GROUP_QUOTA", "DEFAULT_USER_QUOTA",
		// "DEFAULT_GROUP_QUOTA"]
		type!: string

		// Name of the volume to create the quotaRule in.
		volume_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
