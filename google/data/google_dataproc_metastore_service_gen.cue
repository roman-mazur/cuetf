package data

#google_dataproc_metastore_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_metastore_service")
	close({
		// A Cloud Storage URI (starting with gs://) that specifies where
		// artifacts related to the metastore service are stored.
		artifact_gcs_uri?: string

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

		// Information used to configure the Dataproc Metastore service to
		// encrypt
		// customer data at rest.
		encryption_config?: [...close({
			kms_key?: string
		})]

		// The URI of the endpoint used to access the metastore service.
		endpoint_uri?: string

		// Configuration information specific to running Hive metastore
		// software as the metastore service.
		hive_metastore_config?: [...close({
			auxiliary_versions?: [...close({
				config_overrides?: [string]: string
				key?:     string
				version?: string
			})]
			config_overrides?: [string]: string
			endpoint_protocol?: string
			kerberos_config?: [...close({
				keytab?: [...close({
					cloud_secret?: string
				})]
				krb5_config_gcs_uri?: string
				principal?:           string
			})]
			version?: string
		})]
		id?: string

		// User-defined labels for the metastore service.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the metastore service should reside.
		// The default value is 'global'.
		location!: string

		// The one hour maintenance window of the metastore service.
		// This specifies when the service can be restarted for
		// maintenance purposes in UTC time.
		// Maintenance window is not needed for services with the
		// 'SPANNER' database type.
		maintenance_window?: [...close({
			day_of_week?: string
			hour_of_day?: number
		})]

		// The setting that defines how metastore metadata should be
		// integrated with external services and systems.
		metadata_integration?: [...close({
			data_catalog_config?: [...close({
				enabled?: bool
			})]
		})]

		// The relative resource name of the metastore service.
		name?: string

		// The relative resource name of the VPC network on which the
		// instance can be accessed. It is specified in the following
		// form:
		//
		// "projects/{projectNumber}/global/networks/{network_id}".
		network?: string

		// The configuration specifying the network settings for the
		// Dataproc Metastore service.
		network_config?: [...close({
			consumers?: [...close({
				endpoint_uri?: string
				subnetwork?:   string
			})]
		})]

		// The TCP port at which the metastore service is reached.
		// Default: 9083.
		port?:    number
		project?: string

		// The release channel of the service. If unspecified, defaults to
		// 'STABLE'. Default value: "STABLE" Possible values: ["CANARY",
		// "STABLE"]
		release_channel?: string

		// Represents the scaling configuration of a metastore service.
		scaling_config?: [...close({
			autoscaling_config?: [...close({
				autoscaling_enabled?: bool
				autoscaling_factor?:  number
				limit_config?: [...close({
					max_scaling_factor?: number
					min_scaling_factor?: number
				})]
			})]
			instance_size?:  string
			scaling_factor?: number
		})]

		// The configuration of scheduled backup for the metastore
		// service.
		scheduled_backup?: [...close({
			backup_location?: string
			cron_schedule?:   string
			enabled?:         bool
			time_zone?:       string
		})]

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

		// A map of resource manager tags.
		// Resource manager tag keys and values have the same definition
		// as resource manager tags.
		// Keys must be in the format tagKeys/{tag_key_id}, and values are
		// in the format tagValues/{tag_value_id}.
		tags?: [string]: string

		// The configuration specifying telemetry settings for the
		// Dataproc Metastore service. If unspecified defaults to JSON.
		telemetry_config?: [...close({
			log_format?: string
		})]

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
}
