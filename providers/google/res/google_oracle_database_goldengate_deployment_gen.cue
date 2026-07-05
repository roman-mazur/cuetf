package res

import "list"

google_oracle_database_goldengate_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_goldengate_deployment")
	close({
		properties!: matchN(1, [#properties, list.MaxItems(1) & [_, ...] & [...#properties]])
		timeouts?: #timeouts

		// The date and time that the GoldengateDeployment was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "PREVENT".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name for the GoldengateDeployment.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// GoldengateDeployment
		entitlement_id?: string

		// The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
		// Example: us-east4-b-r2.
		// If not specified, the system will pick a zone based on availability.
		gcp_oracle_zone?: string

		// The ID of the GoldengateDeployment to create. This value is
		// restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63 characters in length. The value must start with a letter and end with a
		// letter or a number.
		goldengate_deployment_id!: string
		id?:                       string

		// The labels or tags associated with the GoldengateDeployment.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the GoldengateDeployment resource in the following format:
		// projects/{project}/locations/{region}/goldengateDeployments/{goldengate_deployment}
		name?: string

		// HTTPS link to OCI resources exposed to Customer via UI Interface.
		oci_url?: string

		// The name of the OdbNetwork associated with the GoldengateDeployment.
		odb_network?: string

		// The name of the OdbSubnet associated with the GoldengateDeployment for IP
		// allocation.
		odb_subnet!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string
	})

	#properties: close({
		backup_schedule?: matchN(1, [_#defs."/$defs/properties/$defs/backup_schedule", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/backup_schedule"]])
		deployment_diagnostic_data?: matchN(1, [_#defs."/$defs/properties/$defs/deployment_diagnostic_data", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/deployment_diagnostic_data"]])
		maintenance_config?: matchN(1, [_#defs."/$defs/properties/$defs/maintenance_config", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/maintenance_config"]])
		maintenance_window?: matchN(1, [_#defs."/$defs/properties/$defs/maintenance_window", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/maintenance_window"]])
		ogg_data!: matchN(1, [_#defs."/$defs/properties/$defs/ogg_data", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/properties/$defs/ogg_data"]])

		// The category of the GoldengateDeployment.
		// Possible values:
		// DATA_REPLICATION
		// DATA_TRANSFORMS
		category?: string

		// The Minimum number of OCPUs to be made available for this Deployment.
		cpu_core_count?: number

		// The deployment backup id of the GoldengateDeployment.
		deployment_backup_id?: string

		// The deployment role of the GoldengateDeployment.
		// Possible values:
		// PRIMARY
		// STANDBY
		deployment_role?: string

		// A valid Goldengate Deployment type. For a list of supported types, use
		// the 'ListGoldengateDeploymentTypes' operation.
		deployment_type!: string

		// The deployment url of the GoldengateDeployment.
		deployment_url?: string

		// The description of the GoldengateDeployment.
		description?: string

		// The environment type of the GoldengateDeployment.
		environment_type?: string

		// The Fully Qualified Domain Name of the GoldengateDeployment.
		fqdn?: string

		// Whether the GoldengateDeployment is healthy.
		healthy?: bool

		// The ingress ips of the GoldengateDeployment.
		ingress_ips?: [...close({
			ingress_ip_address?: string
		})]

		// Indicates if auto scaling is enabled for the Deployment's CPU core count.
		is_auto_scaling_enabled?: bool

		// Whether the GoldengateDeployment is of the latest version.
		is_latest_version?: bool

		// Whether the GoldengateDeployment is public.
		is_public?: bool

		// Whether storage utilization limit is exceeded of the GoldengateDeployment.
		is_storage_utilization_limit_exceeded?: bool

		// The time last backup scheduled of the GoldengateDeployment.
		last_backup_schedule_time?: string

		// The Oracle license model that applies to a Deployment.
		// Possible values:
		// LICENSE_INCLUDED
		// BRING_YOUR_OWN_LICENSE
		license_model?: string

		// The lifecycle details of the GoldengateDeployment.
		lifecycle_details?: string

		// State of the GoldengateDeployment.
		// Possible values:
		// CREATING
		// UPDATING
		// ACTIVE
		// INACTIVE
		// DELETING
		// DELETED
		// FAILED
		// NEEDS_ATTENTION
		// IN_PROGRESS
		// CANCELLING
		// CANCELLED
		// SUCCEEDED
		// WAITING
		lifecycle_state?: string

		// The lifecycle sub-state of the GoldengateDeployment.
		// Possible values:
		// RECOVERING
		// STARTING
		// STOPPING
		// MOVING
		// UPGRADING
		// RESTORING
		// BACKING_UP
		// ROLLING_BACK
		lifecycle_sub_state?: string

		// The load balancer id of the GoldengateDeployment.
		load_balancer_id?: string

		// The load balancer subnet id of the GoldengateDeployment.
		load_balancer_subnet_id?: string

		// The locks of the GoldengateDeployment.
		locks?: [...close({
			compartment_id?:      string
			create_time?:         string
			message?:             string
			related_resource_id?: string
			type?:                string
		})]

		// The time next backup scheduled of the GoldengateDeployment.
		next_backup_schedule_time?: string

		// The next maintenance action type of the GoldengateDeployment.
		// Possible values:
		// UPGRADE
		next_maintenance_action_type?: string

		// The next maintenance description of the GoldengateDeployment.
		next_maintenance_description?: string

		// The time of next maintenance of the GoldengateDeployment.
		next_maintenance_time?: string

		// The nsg ids of the GoldengateDeployment.
		nsg_ids?: [...string]

		// OCID of the GoldengateDeployment.
		ocid?: string

		// The time ogg version supported until of the GoldengateDeployment.
		ogg_version_support_end_time?: string

		// The placements of the GoldengateDeployment.
		placements?: [...close({
			availability_domain?: string
			fault_domain?:        string
		})]

		// The private ip address of the GoldengateDeployment.
		private_ip_address?: string

		// The public ip address of the GoldengateDeployment.
		public_ip_address?: string

		// The time when the role of the GoldengateDeployment was changed.
		role_change_time?: string

		// The storage utilization in bytes of the GoldengateDeployment.
		storage_utilization_bytes?: string

		// The time the GoldengateDeployment was updated.
		update_time?: string

		// The time upgrade required of the GoldengateDeployment.
		upgrade_required_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/backup_schedule": close({
		// The timestamp of when the backup was scheduled.
		backup_scheduled_time?: string

		// The bucket name.
		bucket?: string

		// The compartment id.
		compartment_id?: string

		// The frequency backup scheduled.
		// Possible values:
		// DAILY
		// WEEKLY
		// MONTHLY
		frequency_backup_scheduled?: string

		// If metadata only.
		metadata_only?: bool

		// The namespace name.
		namespace?: string
	})

	_#defs: "/$defs/properties/$defs/deployment_diagnostic_data": close({
		// The bucket name.
		bucket?: string

		// The time diagnostic end.
		diagnostic_end_time?: string

		// The time diagnostic start.
		diagnostic_start_time?: string

		// The diagnostic state.
		// Possible values:
		// IN_PROGRESS
		// SUCCEEDED
		// FAILED
		diagnostic_state?: string

		// The namespace name.
		namespace?: string

		// The object name.
		object?: string
	})

	_#defs: "/$defs/properties/$defs/maintenance_config": close({
		// Defines auto upgrade period for bundle releases. Manually configured period
		// cannot be longer than service defined period for bundle releases. This
		// period must be shorter or equal to major release upgrade period. Not
		// passing this field during create will equate to using the service default.
		bundle_release_upgrade_period_days?: number

		// Defines auto upgrade period for interim releases. This period must be
		// shorter or equal to bundle release upgrade period.
		interim_release_upgrade_period_days?: number

		// By default auto upgrade for interim releases are not enabled. If
		// auto-upgrade is enabled for interim release, you have to specify
		// interim_release_upgrade_period_days too.
		is_interim_release_auto_upgrade_enabled?: bool

		// Defines auto upgrade period for major releases. Manually configured period
		// cannot be longer than service defined period for major releases. Not
		// passing this field during create will equate to using the service default.
		major_release_upgrade_period_days?: number

		// Defines auto upgrade period for releases with security fix. Manually
		// configured period cannot be longer than service defined period for security
		// releases. Not passing this field during create will equate to using the
		// service default.
		security_patch_upgrade_period_days?: number
	})

	_#defs: "/$defs/properties/$defs/maintenance_window": close({
		// Possible values:
		// MONDAY
		// TUESDAY
		// WEDNESDAY
		// THURSDAY
		// FRIDAY
		// SATURDAY
		// SUNDAY
		day!: string

		// Start hour for maintenance period. Hour is in UTC.
		start_hour!: number
	})

	_#defs: "/$defs/properties/$defs/ogg_data": close({
		group_roles_mapping?: matchN(1, [_#defs."/$defs/properties/$defs/ogg_data/$defs/group_roles_mapping", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/ogg_data/$defs/group_roles_mapping"]])

		// The Goldengate deployment console password in plain text.
		admin_password?: string

		// Input only. The Goldengate deployment console password secret version.
		admin_password_secret_version?: string

		// The Goldengate deployment console username.
		admin_username!: string

		// The certificate of the GoldengateDeployment.
		certificate?: string

		// The credential store of the GoldengateDeployment.
		// Possible values:
		// GOLDENGATE
		// IAM
		credential_store?: string

		// The name given to the Goldengate service deployment. The name must be 1 to
		// 32 characters long, must contain only alphanumeric characters and must
		// start with a letter.
		deployment!: string

		// The identity domain id of the GoldengateDeployment.
		identity_domain_id?: string

		// Version of OGG
		ogg_version?: string

		// The password secret id of the GoldengateDeployment.
		password_secret_id?: string
	})

	_#defs: "/$defs/properties/$defs/ogg_data/$defs/group_roles_mapping": close({
		// The administrator group id.
		administrator_group_id?: string

		// The operator group id.
		operator_group_id?: string

		// The security group id.
		security_group_id?: string

		// The user group id.
		user_group_id?: string
	})
}
