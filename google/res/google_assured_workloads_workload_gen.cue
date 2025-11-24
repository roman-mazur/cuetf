package res

import "list"

#google_assured_workloads_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_assured_workloads_workload")
	close({
		// Optional. Input only. The billing account used for the
		// resources which are direct children of workload. This billing
		// account is initially associated with the resources created as
		// part of Workload creation. After the initial creation of these
		// resources, the customer can change the assigned billing
		// account. The resource name has the form
		// `billingAccounts/{billing_account_id}`. For example,
		// `billingAccounts/012345-567890-ABCDEF`.
		billing_account?: string
		kms_settings?: matchN(1, [#kms_settings, list.MaxItems(1) & [...#kms_settings]])

		// Required. Immutable. Compliance Regime associated with this
		// workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4,
		// CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS,
		// HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT,
		// CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT,
		// ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS,
		// ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2,
		// JP_REGIONS_AND_SUPPORT,
		// KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS,
		// REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS,
		// HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
		compliance_regime!: string

		// Output only. Count of active Violations in the Workload.
		compliance_status?: [...close({
			acknowledged_violation_count?: [...number]
			active_violation_count?: [...number]
		})]

		// Output only. Urls for services which are compliant for this
		// Assured Workload, but which are currently disallowed by the
		// ResourceUsageRestriction org policy. Invoke
		// workloads.restrictAllowedResources endpoint to allow your
		// project developers to use these services in their environment.
		compliant_but_disallowed_services?: [...string]

		// Output only. Immutable. The Workload creation timestamp.
		create_time?: string

		// Required. The user-assigned display name of the Workload. When
		// present it must be between 4 to 30 characters. Allowed
		// characters are: lowercase and uppercase letters, numbers,
		// hyphen, and spaces. Example: My Workload
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. Represents the Ekm Provisioning State of the given
		// workload.
		ekm_provisioning_response?: [...close({
			ekm_provisioning_error_domain?:  string
			ekm_provisioning_error_mapping?: string
			ekm_provisioning_state?:         string
		})]

		// Optional. Indicates the sovereignty status of the given
		// workload. Currently meant to be used by Europe/Canada
		// customers.
		enable_sovereign_controls?: bool

		// Output only. Represents the KAJ enrollment state of the given
		// workload. Possible values: KAJ_ENROLLMENT_STATE_UNSPECIFIED,
		// KAJ_ENROLLMENT_STATE_PENDING, KAJ_ENROLLMENT_STATE_COMPLETE
		kaj_enrollment_state?: string
		id?:                   string

		// Optional. Labels applied to the workload.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Output only. The resource name of the workload.
		name?: string
		partner_permissions?: matchN(1, [#partner_permissions, list.MaxItems(1) & [...#partner_permissions]])
		resource_settings?: matchN(1, [#resource_settings, [...#resource_settings]])
		timeouts?: #timeouts
		workload_options?: matchN(1, [#workload_options, list.MaxItems(1) & [...#workload_options]])

		// The organization for the resource
		organization!: string

		// Optional. Partner regime associated with this workload.
		// Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS,
		// SOVEREIGN_CONTROLS_BY_T_SYSTEMS,
		// SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN,
		// SOVEREIGN_CONTROLS_BY_CNTXT,
		// SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM
		partner?: string

		// Optional. Input only. Billing account necessary for purchasing
		// services from Sovereign Partners. This field is required for
		// creating SIA/PSN/CNTXT partner workloads. The caller should
		// have 'billing.resourceAssociations.create' IAM permission on
		// this billing-account. The format of this string is
		// billingAccounts/AAAAAA-BBBBBB-CCCCCC.
		partner_services_billing_account?: string

		// Input only. The parent resource for the resources managed by
		// this Assured Workload. May be either empty or a folder
		// resource which is a child of the Workload parent. If not
		// specified all resources are created under the parent
		// organization. Format: folders/{folder_id}
		provisioned_resources_parent?: string

		// Output only. The resources associated with this workload. These
		// resources will be created when creating the workload. If any
		// of the projects already exist, the workload creation will
		// fail. Always read only.
		resources?: [...close({
			resource_id?:   number
			resource_type?: string
		})]

		// Output only. Represents the SAA enrollment response of the
		// given workload. SAA enrollment response is queried during
		// workloads.get call. In failure cases, user friendly error
		// message is shown in SAA details page.
		saa_enrollment_response?: [...close({
			setup_errors?: [...string]
			setup_status?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Optional. Indicates whether the e-mail notification for a
		// violation is enabled for a workload. This value will be by
		// default True, and if not present will be considered as true.
		// This should only be updated via updateWorkload call. Any
		// Changes to this field during the createWorkload call will not
		// be honored. This will always be true while creating the
		// workload.
		violation_notifications_enabled?: bool
	})

	#kms_settings: close({
		// Required. Input only. Immutable. The time at which the Key
		// Management Service will automatically create a new version of
		// the crypto key and mark it as the primary.
		next_rotation_time!: string

		// Required. Input only. Immutable. will be advanced by this
		// period when the Key Management Service automatically rotates a
		// key. Must be at least 24 hours and at most 876,000 hours.
		rotation_period!: string
	})

	#partner_permissions: close({
		// Optional. Allow partner to view violation alerts.
		assured_workloads_monitoring?: bool

		// Allow the partner to view inspectability logs and monitoring
		// violations.
		data_logs_viewer?: bool

		// Optional. Allow partner to view access approval logs.
		service_access_approver?: bool
	})

	#resource_settings: close({
		// User-assigned resource display name. If not empty it will be
		// used to create a resource with the specified name.
		display_name?: string

		// Resource identifier. For a project this represents projectId.
		// If the project is already taken, the workload creation will
		// fail. For KeyRing, this represents the keyring_id. For a
		// folder, don't set this value as folder_id is assigned by
		// Google.
		resource_id?: string

		// Indicates the type of resource. This field should be specified
		// to correspond the id to the right project type
		// (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT) Possible values:
		// RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT,
		// ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER
		resource_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#workload_options: close({
		// Indicates type of KAJ enrollment for the workload. Currently,
		// only specifiying KEY_ACCESS_TRANSPARENCY_OFF is implemented to
		// not enroll in KAT-level KAJ enrollment for Regional Controls
		// workloads. Possible values: KAJ_ENROLLMENT_TYPE_UNSPECIFIED,
		// FULL_KAJ, EKM_ONLY, KEY_ACCESS_TRANSPARENCY_OFF
		kaj_enrollment_type?: string
	})
}
