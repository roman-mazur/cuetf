package res

import "list"

#google_oracle_database_exascale_db_storage_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_exascale_db_storage_vault")
	close({
		// The date and time when the ExascaleDbStorageVault was created.
		create_time?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// The display name for the ExascaleDbStorageVault. The name does
		// not have to
		// be unique within your project. The name must be 1-255
		// characters long and
		// can only contain alphanumeric characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// ExascaleDbStorageVault.
		entitlement_id?: string

		// The ID of the ExascaleDbStorageVault to create. This value is
		// restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a
		// maximum of
		// 63 characters in length. The value must start with a letter and
		// end with a
		// letter or a number.
		exascale_db_storage_vault_id!: string

		// The GCP Oracle zone where Oracle ExascaleDbStorageVault is
		// hosted.
		// Example: us-east4-b-r2.
		// If not specified, the system will pick a zone based on
		// availability.
		gcp_oracle_zone?: string
		id?:              string

		// The labels or tags associated with the ExascaleDbStorageVault.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		properties!: matchN(1, [#properties, list.MaxItems(1) & [_, ...] & [...#properties]])
		timeouts?: #timeouts

		// Identifier. The resource name of the ExascaleDbStorageVault.
		// Format:
		// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// The size of additional flash cache in percentage of high
		// capacity
		// database storage.
		additional_flash_cache_percent?: number

		// The shape attributes of the VM clusters attached to the
		// ExascaleDbStorageVault.
		attached_shape_attributes?: [...string]

		// The shape attributes available for the VM clusters to be
		// attached to the
		// ExascaleDbStorageVault.
		available_shape_attributes?: [...string]

		// Deep link to the OCI console to view this resource.
		oci_uri?: string

		// The OCID for the ExascaleDbStorageVault.
		ocid?: string

		// The state of the ExascaleDbStorageVault.
		// Possible values:
		// PROVISIONING
		// AVAILABLE
		// UPDATING
		// TERMINATING
		// TERMINATED
		// FAILED
		state?: string
		exascale_db_storage_details!: matchN(1, [_#defs."/$defs/properties/$defs/exascale_db_storage_details", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/properties/$defs/exascale_db_storage_details"]])
		time_zone?: matchN(1, [_#defs."/$defs/properties/$defs/time_zone", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/time_zone"]])

		// The number of VM clusters associated with the
		// ExascaleDbStorageVault.
		vm_cluster_count?: number

		// The list of VM cluster OCIDs associated with the
		// ExascaleDbStorageVault.
		vm_cluster_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/exascale_db_storage_details": close({
		// The available storage capacity for the ExascaleDbStorageVault,
		// in gigabytes
		// (GB).
		available_size_gbs?: number

		// The total storage allocation for the ExascaleDbStorageVault, in
		// gigabytes
		// (GB).
		total_size_gbs!: number
	})

	_#defs: "/$defs/properties/$defs/time_zone": close({
		// IANA Time Zone Database time zone. For example
		// "America/New_York".
		id?: string

		// IANA Time Zone Database version number. For example "2019a".
		version?: string
	})
}
