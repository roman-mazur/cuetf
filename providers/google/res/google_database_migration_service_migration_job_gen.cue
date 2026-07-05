package res

import "list"

google_database_migration_service_migration_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_database_migration_service_migration_job")
	close({
		dump_flags?: matchN(1, [#dump_flags, list.MaxItems(1) & [...#dump_flags]])
		objects_config?: matchN(1, [#objects_config, list.MaxItems(1) & [...#objects_config]])
		performance_config?: matchN(1, [#performance_config, list.MaxItems(1) & [...#performance_config]])
		postgres_homogeneous_config?: matchN(1, [#postgres_homogeneous_config, list.MaxItems(1) & [...#postgres_homogeneous_config]])
		reverse_ssh_connectivity?: matchN(1, [#reverse_ssh_connectivity, list.MaxItems(1) & [...#reverse_ssh_connectivity]])
		static_ip_connectivity?: matchN(1, [#static_ip_connectivity, list.MaxItems(1) & [...#static_ip_connectivity]])
		timeouts?: #timeouts
		vpc_peering_connectivity?: matchN(1, [#vpc_peering_connectivity, list.MaxItems(1) & [...#vpc_peering_connectivity]])

		// Output only. The timestamp when the resource was created. A timestamp in
		// RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example:
		// '2014-10-02T15:01:23.045123456Z'.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The desired state of the migration job. If set to 'RUNNING', the migration
		// job will be started. Possible values: ["NOT_STARTED", "RUNNING"]
		desired_state?: string

		// The name of the destination connection profile resource in the form of
		// projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
		destination!: string

		// The migration job display name.
		display_name?: string

		// The path to the dump file in Google Cloud Storage,
		// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
		// This field and the "dump_flags" field are mutually exclusive.
		dump_path?: string

		// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
		// migrations only. Possible values: ["LOGICAL", "PHYSICAL"]
		dump_type?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Output only. The error details in case of state FAILED.
		error?: [...close({
			code?: number
			details?: [...{
				[string]: string
			}]
			message?: string
		})]
		id?: string

		// The resource labels for migration job to use to annotate any related
		// underlying resources such as Compute Engine VMs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location where the migration job should reside.
		location?: string

		// The ID of the migration job.
		migration_job_id!: string

		// The name of this migration job resource in the form of
		// projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
		name?: string

		// The current migration job phase.
		phase?: string

		// The name of the source connection profile resource in the form of
		// projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
		source!:  string
		project?: string

		// The current migration job state.
		state?: string

		// If set to true, will stop the Terraform apply if there are validation warnings.
		stop_on_warnings?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of the migration job. Possible values: ["ONE_TIME", "CONTINUOUS"]
		type!: string
	})

	#dump_flags: close({
		dump_flags?: matchN(1, [_#defs."/$defs/dump_flags/$defs/dump_flags", [..._#defs."/$defs/dump_flags/$defs/dump_flags"]])
	})

	#objects_config: close({
		source_objects_config?: matchN(1, [_#defs."/$defs/objects_config/$defs/source_objects_config", list.MaxItems(1) & [..._#defs."/$defs/objects_config/$defs/source_objects_config"]])
	})

	#performance_config: close({
		// Initial dump parallelism level. Possible values: ["MIN", "OPTIMAL", "MAX"]
		dump_parallel_level?: string
	})

	#postgres_homogeneous_config: close({
		// Whether the migration uses native logical replication.
		is_native_logical!: bool

		// Maximum number of additional subscriptions to use for the migration job.
		max_additional_subscriptions?: number
	})

	#reverse_ssh_connectivity: close({
		// The name of the virtual machine (Compute Engine) used as the bastion server
		// for the SSH tunnel.
		vm?: string

		// The IP of the virtual machine (Compute Engine) used as the bastion server
		// for the SSH tunnel.
		vm_ip?: string

		// The forwarding port of the virtual machine (Compute Engine) used as the
		// bastion server for the SSH tunnel.
		vm_port?: number

		// The name of the VPC to peer with the Cloud SQL private network.
		vpc?: string
	})

	#static_ip_connectivity: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_peering_connectivity: close({
		// The name of the VPC network to peer with the Cloud SQL private network.
		vpc?: string
	})

	_#defs: "/$defs/dump_flags/$defs/dump_flags": close({
		// The name of the flag
		name?: string

		// The vale of the flag
		value?: string
	})

	_#defs: "/$defs/objects_config/$defs/source_objects_config": close({
		object_configs?: matchN(1, [_#defs."/$defs/objects_config/$defs/source_objects_config/$defs/object_configs", [..._#defs."/$defs/objects_config/$defs/source_objects_config/$defs/object_configs"]])

		// The objects selection type of the migration job. When set to
		// 'SPECIFIED_OBJECTS', only the objects listed in 'objectConfigs' are
		// migrated. When set to 'ALL_OBJECTS', all objects available on the
		// source are migrated. Possible values: ["ALL_OBJECTS", "SPECIFIED_OBJECTS"]
		objects_selection_type?: string
	})

	_#defs: "/$defs/objects_config/$defs/source_objects_config/$defs/object_configs": close({
		object_identifier?: matchN(1, [_#defs."/$defs/objects_config/$defs/source_objects_config/$defs/object_configs/$defs/object_identifier", list.MaxItems(1) & [..._#defs."/$defs/objects_config/$defs/source_objects_config/$defs/object_configs/$defs/object_identifier"]])
	})

	_#defs: "/$defs/objects_config/$defs/source_objects_config/$defs/object_configs/$defs/object_identifier": close({
		// The database name. Required only if the object uses
		// a database name as part of its unique identifier.
		database?: string

		// The schema name. Required only if the object uses
		// a schema name as part of its unique identifier.
		schema?: string

		// The table name. Required only if the object is a level
		// below database or schema.
		table?: string

		// The category of the migration job object: 'DATABASE',
		// 'SCHEMA', or 'TABLE'. Possible values: ["DATABASE", "SCHEMA", "TABLE"]
		type!: string
	})
}
