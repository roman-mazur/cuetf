package res

import "list"

#google_dataproc_metastore_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_metastore_service")
	close({
		// A Cloud Storage URI (starting with gs://) that specifies where
		// artifacts related to the metastore service are stored.
		artifact_gcs_uri?: string
		encryption_config?: matchN(1, [#encryption_config, list.MaxItems(1) & [...#encryption_config]])

		// Output only. The time when the metastore service was created.
		create_time?: string

		// The database type that the Metastore service stores its data.
		// Default value: "MYSQL" Possible values: ["MYSQL", "SPANNER"]
		database_type?: string

		// Indicates if the dataproc metastore should be protected against
		// accidental deletions.
		deletion_protection?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The URI of the endpoint used to access the metastore service.
		endpoint_uri?: string

		// User-defined labels for the metastore service.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location where the metastore service should reside.
		// The default value is 'global'.
		location?: string

		// The relative resource name of the metastore service.
		name?: string

		// The relative resource name of the VPC network on which the
		// instance can be accessed. It is specified in the following
		// form:
		//
		// "projects/{projectNumber}/global/networks/{network_id}".
		network?: string

		// The TCP port at which the metastore service is reached.
		// Default: 9083.
		port?: number

		// The release channel of the service. If unspecified, defaults to
		// 'STABLE'. Default value: "STABLE" Possible values: ["CANARY",
		// "STABLE"]
		release_channel?: string
		hive_metastore_config?: matchN(1, [#hive_metastore_config, list.MaxItems(1) & [...#hive_metastore_config]])
		maintenance_window?: matchN(1, [#maintenance_window, list.MaxItems(1) & [...#maintenance_window]])
		metadata_integration?: matchN(1, [#metadata_integration, list.MaxItems(1) & [...#metadata_integration]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		scaling_config?: matchN(1, [#scaling_config, list.MaxItems(1) & [...#scaling_config]])
		scheduled_backup?: matchN(1, [#scheduled_backup, list.MaxItems(1) & [...#scheduled_backup]])
		telemetry_config?: matchN(1, [#telemetry_config, list.MaxItems(1) & [...#telemetry_config]])
		timeouts?: #timeouts
		project?:  string

		// The ID of the metastore service. The id must contain only
		// letters (a-z, A-Z), numbers (0-9), underscores (_),
		// and hyphens (-). Cannot begin or end with underscore or hyphen.
		// Must consist of between
		// 3 and 63 characters.
		service_id!: string

		// The current state of the metastore service.
		state?: string

		// Additional information about the current state of the metastore
		// service, if available.
		state_message?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The tier of the service. Possible values: ["DEVELOPER",
		// "ENTERPRISE"]
		tier?: string

		// The globally unique resource identifier of the metastore
		// service.
		uid?: string

		// Output only. The time when the metastore service was last
		// updated.
		update_time?: string
	})

	#encryption_config: close({
		// The fully qualified customer provided Cloud KMS key name to use
		// for customer data encryption.
		// Use the following format:
		// 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)'
		kms_key!: string
	})

	#hive_metastore_config: close({
		// A mapping of Hive metastore configuration key-value pairs to
		// apply to the Hive metastore (configured in hive-site.xml).
		// The mappings override system defaults (some keys cannot be
		// overridden)
		config_overrides?: [string]: string

		// The protocol to use for the metastore service endpoint. If
		// unspecified, defaults to 'THRIFT'. Default value: "THRIFT"
		// Possible values: ["THRIFT", "GRPC"]
		endpoint_protocol?: string
		auxiliary_versions?: matchN(1, [_#defs."/$defs/hive_metastore_config/$defs/auxiliary_versions", [..._#defs."/$defs/hive_metastore_config/$defs/auxiliary_versions"]])

		// The Hive metastore schema version.
		version!: string
		kerberos_config?: matchN(1, [_#defs."/$defs/hive_metastore_config/$defs/kerberos_config", list.MaxItems(1) & [..._#defs."/$defs/hive_metastore_config/$defs/kerberos_config"]])
	})

	#maintenance_window: close({
		// The day of week, when the window starts. Possible values:
		// ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY",
		// "SATURDAY", "SUNDAY"]
		day_of_week!: string

		// The hour of day (0-23) when the window starts.
		hour_of_day!: number
	})

	#metadata_integration: close({
		data_catalog_config?: matchN(1, [_#defs."/$defs/metadata_integration/$defs/data_catalog_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/metadata_integration/$defs/data_catalog_config"]])
	})

	#network_config: close({
		consumers?: matchN(1, [_#defs."/$defs/network_config/$defs/consumers", [_, ...] & [..._#defs."/$defs/network_config/$defs/consumers"]])
	})

	#scaling_config: close({
		autoscaling_config?: matchN(1, [_#defs."/$defs/scaling_config/$defs/autoscaling_config", list.MaxItems(1) & [..._#defs."/$defs/scaling_config/$defs/autoscaling_config"]])

		// Metastore instance sizes. Possible values: ["EXTRA_SMALL",
		// "SMALL", "MEDIUM", "LARGE", "EXTRA_LARGE"]
		instance_size?: string

		// Scaling factor, in increments of 0.1 for values less than 1.0,
		// and increments of 1.0 for values greater than 1.0.
		scaling_factor?: number
	})

	#scheduled_backup: close({
		// A Cloud Storage URI of a folder, in the format
		// gs://<bucket_name>/<path_inside_bucket>. A sub-folder
		// <backup_folder> containing backup files will be stored below
		// it.
		backup_location!: string

		// The scheduled interval in Cron format, see
		// https://en.wikipedia.org/wiki/Cron The default is empty:
		// scheduled backup is not enabled. Must be specified to enable
		// scheduled backups.
		cron_schedule?: string

		// Defines whether the scheduled backup is enabled. The default
		// value is false.
		enabled?: bool

		// Specifies the time zone to be used when interpreting
		// cronSchedule. Must be a time zone name from the time zone
		// database
		// (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones),
		// e.g. America/Los_Angeles or Africa/Abidjan. If left
		// unspecified, the default is UTC.
		time_zone?: string
	})

	#telemetry_config: close({
		// The output format of the Dataproc Metastore service's logs.
		// Default value: "JSON" Possible values: ["LEGACY", "JSON"]
		log_format?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/hive_metastore_config/$defs/auxiliary_versions": close({
		// A mapping of Hive metastore configuration key-value pairs to
		// apply to the auxiliary Hive metastore (configured in
		// hive-site.xml) in addition to the primary version's overrides.
		// If keys are present in both the auxiliary version's overrides
		// and the primary version's overrides, the value from the
		// auxiliary version's overrides takes precedence.
		config_overrides?: [string]: string
		key!: string

		// The Hive metastore version of the auxiliary service. It must be
		// less than the primary Hive metastore service's version.
		version!: string
	})

	_#defs: "/$defs/hive_metastore_config/$defs/kerberos_config": close({
		keytab?: matchN(1, [_#defs."/$defs/hive_metastore_config/$defs/kerberos_config/$defs/keytab", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/hive_metastore_config/$defs/kerberos_config/$defs/keytab"]])

		// A Cloud Storage URI that specifies the path to a krb5.conf
		// file. It is of the form gs://{bucket_name}/path/to/krb5.conf,
		// although the file does not need to be named krb5.conf
		// explicitly.
		krb5_config_gcs_uri!: string

		// A Kerberos principal that exists in the both the keytab the KDC
		// to authenticate as. A typical principal is of the form
		// "primary/instance@REALM", but there is no exact format.
		principal!: string
	})

	_#defs: "/$defs/hive_metastore_config/$defs/kerberos_config/$defs/keytab": close({
		// The relative resource name of a Secret Manager secret version,
		// in the following form:
		//
		// "projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}".
		cloud_secret!: string
	})

	_#defs: "/$defs/metadata_integration/$defs/data_catalog_config": close({
		// Defines whether the metastore metadata should be synced to Data
		// Catalog. The default value is to disable syncing metastore
		// metadata to Data Catalog.
		enabled!: bool
	})

	_#defs: "/$defs/network_config/$defs/consumers": close({
		// The URI of the endpoint used to access the metastore service.
		endpoint_uri?: string

		// The subnetwork of the customer project from which an IP address
		// is reserved and used as the Dataproc Metastore service's
		// endpoint.
		// It is accessible to hosts in the subnet and to all hosts in a
		// subnet in the same region and same network.
		// There must be at least one IP address available in the subnet's
		// primary range. The subnet is specified in the following form:
		// 'projects/{projectNumber}/regions/{region_id}/subnetworks/{subnetwork_id}
		subnetwork!: string
	})

	_#defs: "/$defs/scaling_config/$defs/autoscaling_config": close({
		limit_config?: matchN(1, [_#defs."/$defs/scaling_config/$defs/autoscaling_config/$defs/limit_config", list.MaxItems(1) & [..._#defs."/$defs/scaling_config/$defs/autoscaling_config/$defs/limit_config"]])

		// Defines whether autoscaling is enabled. The default value is
		// false.
		autoscaling_enabled?: bool

		// Output only. The scaling factor of a service with autoscaling
		// enabled.
		autoscaling_factor?: number
	})

	_#defs: "/$defs/scaling_config/$defs/autoscaling_config/$defs/limit_config": close({
		// The maximum scaling factor that the service will autoscale to.
		// The default value is 6.0.
		max_scaling_factor?: number

		// The minimum scaling factor that the service will autoscale to.
		// The default value is 0.1.
		min_scaling_factor?: number
	})
}
