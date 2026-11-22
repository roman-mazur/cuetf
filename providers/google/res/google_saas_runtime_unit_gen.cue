package res

import "list"

google_saas_runtime_unit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_saas_runtime_unit")
	close({
		maintenance?: matchN(1, [#maintenance, list.MaxItems(1) & [...#maintenance]])
		timeouts?: #timeouts

		// Annotations is an unstructured key-value map stored with a resource that
		// may be set by external tools to store and retrieve arbitrary metadata.
		// They are not queryable and should be preserved when modifying objects.
		//
		// More info: https://kubernetes.io/docs/user-guide/annotations
		//
		// **Note**: This field is non-authoritative, and will only manage the
		// annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of the annotations
		// present on the resource.
		annotations?: [string]: string

		// Reference to the App Hub Application this Unit belongs to, in the format
		// 'projects/{project}/locations/{location}/applications/{application}'.
		// All resources deployed in this Unit are associated with the specified
		// Application. If empty, the service sets it during any UnitOperation
		// when the UnitKind has 'app_params.group' and App Hub is enabled.
		application?: string

		// A set of conditions which indicate the various conditions this resource can
		// have.
		conditions?: [...close({
			last_transition_time?: string
			message?:              string
			reason?:               string
			status?:               string
			type?:                 string
		})]

		// The timestamp when the resource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Set of dependencies for this unit. Maximum 10.
		dependencies?: [...close({
			alias?: string
			unit?:  string
		})]

		// List of Units that depend on this unit. Unit can only be deprovisioned if
		// this list is empty. Maximum 1000.
		dependents?: [...close({
			alias?: string
			unit?:  string
		})]

		// All of annotations (key/value pairs) present on the resource in GCP,
		// including the annotations configured through Terraform, other clients and
		// services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Indicates the current input variables deployed by the unit
		input_variables?: [...close({
			type?:     string
			value?:    string
			variable?: string
		})]

		// The labels on the resource, which can be used for categorization.
		// similar to Kubernetes resource labels.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Indicates whether the Unit life cycle is controlled
		// by the user or by the system.
		// Immutable once created.
		// Possible values:
		// MANAGEMENT_MODE_USER
		// MANAGEMENT_MODE_SYSTEM
		management_mode?: string

		// Identifier. The resource name (full URI of the resource) following the standard naming
		// scheme:
		//
		// "projects/{project}/locations/{location}/units/{unit}"
		name?: string

		// List of concurrent UnitOperations that are operating on this Unit.
		ongoing_operations?: [...string]

		// Set of key/value pairs corresponding to output variables from execution of
		// actuation templates. The variables are declared in actuation configs (e.g
		// in helm chart or terraform) and the values are fetched and returned by the
		// actuation engine upon completion of execution.
		output_variables?: [...close({
			type?:     string
			value?:    string
			variable?: string
		})]

		// List of pending (wait to be executed) UnitOperations for this unit.
		pending_operations?: [...string]

		// The current Release object for this Unit.
		release?: string
		project?: string

		// List of scheduled UnitOperations for this unit.
		scheduled_operations?: [...string]

		// Current lifecycle state of the resource (e.g. if it's being
		// created or ready to use).
		// Possible values:
		// UNIT_STATE_NOT_PROVISIONED
		// UNIT_STATE_PROVISIONING
		// UNIT_STATE_UPDATING
		// UNIT_STATE_DEPROVISIONING
		// UNIT_STATE_READY
		// UNIT_STATE_ERROR
		state?: string

		// If set, indicates the time when the system will start removing the unit.
		system_cleanup_at?: string

		// Indicates the system managed state of the unit.
		// Possible values:
		// SYSTEM_MANAGED_STATE_ACTIVE
		// SYSTEM_MANAGED_STATE_INACTIVE
		// SYSTEM_MANAGED_STATE_DECOMMISSIONED
		system_managed_state?: string

		// Reference to the Saas Tenant resource this unit belongs to. This for
		// example informs the maintenance policies to use for scheduling future
		// updates on a unit. (optional and immutable once created)
		tenant?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The unique identifier of the resource. UID is unique in the time
		// and space for this resource within the scope of the service. It is
		// typically generated by the server on successful creation of a resource
		// and must not be changed. UID is used to uniquely identify resources
		// with resource name reuses. This should be a UUID4.
		uid?: string

		// The ID value for the new unit.
		unit_id!: string

		// Reference to the UnitKind this Unit belongs to. Immutable once set.
		unit_kind?: string

		// The timestamp when the resource was last updated. Any
		// change to the resource made by users must refresh this value.
		// Changes to a resource made by the service should refresh this value.
		update_time?: string
	})

	#maintenance: close({
		// If present, it fixes the release on the unit until the given time; i.e.
		// changes to the release field will be rejected. Rollouts should and will
		// also respect this by not requesting an upgrade in the first place.
		pinned_until_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
