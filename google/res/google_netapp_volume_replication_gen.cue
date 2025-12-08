package res

import "list"

#google_netapp_volume_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_netapp_volume_replication")
	close({
		// Create time of the active directory. A timestamp in RFC3339 UTC
		// "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// A destination volume is created as part of replication
		// creation. The destination volume will not became
		// under Terraform management unless you import it manually. If
		// you delete the replication, this volume
		// will remain.
		// Setting this parameter to true will delete the *current*
		// destination volume when destroying the
		// replication. If you reversed the replication direction, this
		// will be your former source volume!
		// For production use, it is recommended to keep this parameter
		// false to avoid accidental volume
		// deletion. Handle with care. Default is false.
		delete_destination_volume?: bool

		// An description of this resource.
		description?: string

		// Full resource name of destination volume with format:
		// 'projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}'
		destination_volume?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Only replications with mirror_state=MIRRORED can be stopped. A
		// replication in mirror_state=TRANSFERRING
		// currently receives an update and stopping the update might be
		// undesirable. Set this parameter to true
		// to stop anyway. All data transferred to the destination will be
		// discarded and content of destination
		// volume will remain at the state of the last successful update.
		// Default is false.
		force_stopping?: bool

		// Condition of the relationship. Can be one of the following:
		// - true: The replication relationship is healthy. It has not
		// missed the most recent scheduled transfer.
		// - false: The replication relationship is not healthy. It has
		// missed the most recent scheduled transfer.
		healthy?: bool

		// HybridPeeringDetails contains details about the hybrid peering.
		hybrid_peering_details?: [...close({
			command?:             string
			command_expiry_time?: string
			passphrase?:          string
			peer_cluster_name?:   string
			peer_svm_name?:       string
			peer_volume_name?:    string
			subnet_ip?:           string
		})]

		// Hybrid replication type.
		hybrid_replication_type?: string

		// Copy pastable snapmirror commands to be executed on onprem
		// cluster by the customer.
		hybrid_replication_user_commands?: [...close({
			commands?: [...string]
		})]

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Name of region for this resource. The resource needs to be
		// created in the region of the destination volume.
		location!: string

		// Indicates the state of the mirror between source and
		// destination volumes. Depending on the amount of data
		// in your source volume, PREPARING phase can take hours or days.
		// mirrorState = MIRRORED indicates your baseline
		// transfer ended and destination volume became accessible
		// read-only. TRANSFERRING means a MIRRORED volume
		// currently receives an update. Updated every 5 minutes.
		mirror_state?: string

		// The name of the replication. Needs to be unique per location.
		name!: string

		// Set to false to stop/break the mirror. Stopping the mirror
		// makes the destination volume read-write
		// and act independently from the source volume.
		// Set to true to enable/resume the mirror. WARNING: Resuming a
		// mirror overwrites any changes
		// done to the destination volume with the content of the source
		// volume.
		replication_enabled?: bool
		destination_volume_parameters?: matchN(1, [#destination_volume_parameters, list.MaxItems(1) & [...#destination_volume_parameters]])
		timeouts?: #timeouts

		// Specifies the replication interval. Possible values:
		// ["EVERY_10_MINUTES", "HOURLY", "DAILY"]
		replication_schedule!: string
		project?:              string

		// Reverting a replication can swap source and destination volume
		// roles. This field indicates if the 'location' hosts
		// the source or destination volume. For resume and revert and
		// resume operations it is critical to understand
		// which volume is the source volume, since it will overwrite
		// changes done to the destination volume.
		role?: string

		// Full resource name of source volume with format:
		// 'projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}'
		source_volume?: string

		// Indicates the state of replication resource. State of the
		// mirror itself is indicated in mirrorState.
		state?: string

		// State details of the replication resource.
		state_details?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Replication transfer statistics. All statistics are updated
		// every 5 minutes.
		transfer_stats?: [...close({
			lag_duration?:            string
			last_transfer_bytes?:     string
			last_transfer_duration?:  string
			last_transfer_end_time?:  string
			last_transfer_error?:     string
			total_transfer_duration?: string
			transfer_bytes?:          string
			update_time?:             string
		})]

		// The name of the existing source volume.
		volume_name!: string

		// Replication resource state is independent of mirror_state. With
		// enough data, it can take many hours
		// for mirror_state to reach MIRRORED. If you want Terraform to
		// wait for the mirror to finish on
		// create/stop/resume operations, set this parameter to true.
		// Default is false.
		wait_for_mirror?: bool
	})

	#destination_volume_parameters: close({
		// Description for the destination volume.
		description?: string

		// Share name for destination volume. If not specified, name of
		// source volume's share name will be used.
		share_name?: string

		// Name of an existing storage pool for the destination volume
		// with format:
		// 'projects/{{project}}/locations/{{location}}/storagePools/{{poolId}}'
		storage_pool!: string
		tiering_policy?: matchN(1, [_#defs."/$defs/destination_volume_parameters/$defs/tiering_policy", list.MaxItems(1) & [..._#defs."/$defs/destination_volume_parameters/$defs/tiering_policy"]])

		// Name for the destination volume to be created. If not
		// specified, the name of the source volume will be used.
		volume_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/destination_volume_parameters/$defs/tiering_policy": close({
		// Optional. Time in days to mark the volume's data block as cold
		// and make it eligible for tiering, can be range from 2-183.
		// Default is 31.
		cooling_threshold_days?: number

		// Optional. Flag indicating if the volume has tiering policy
		// enable/pause. Default is PAUSED. Default value: "PAUSED"
		// Possible values: ["ENABLED", "PAUSED"]
		tier_action?: string
	})
}
