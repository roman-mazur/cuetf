package res

import "list"

#google_os_config_v2_policy_orchestrator_for_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_os_config_v2_policy_orchestrator_for_folder")
	close({
		// Action to be done by the orchestrator in
		// 'projects/{project_id}/zones/{zone_id}' locations defined by
		// the
		// 'orchestration_scope'. Allowed values:
		// - 'UPSERT' - Orchestrator will create or update target
		// resources.
		// - 'DELETE' - Orchestrator will delete target resources, if they
		// exist
		action!: string

		// Timestamp when the policy orchestrator resource was created.
		create_time?: string

		// Freeform text describing the purpose of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		etag?: string

		// The parent resource name in the form of
		// 'folders/{folder_id}/locations/global'.
		folder_id!: string

		// Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Identifier. In form of
		// *
		// 'organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}'
		// *
		// 'folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}'
		// *
		// 'projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}'
		name?: string

		// Describes the state of the orchestration process.
		orchestration_state?: [...close({
			current_iteration_state?: [...close({
				error?: [...close({
					code?: number
					details?: [...close({
						type_url?: string
						value?:    string
					})]
					message?: string
				})]
				failed_actions?:    string
				finish_time?:       string
				performed_actions?: string
				progress?:          number
				rollout_resource?:  string
				start_time?:        string
				state?:             string
			})]
			previous_iteration_state?: [...close({
				error?: [...close({
					code?: number
					details?: [...close({
						type_url?: string
						value?:    string
					})]
					message?: string
				})]
				failed_actions?:    string
				finish_time?:       string
				performed_actions?: string
				progress?:          number
				rollout_resource?:  string
				start_time?:        string
				state?:             string
			})]
		})]
		orchestrated_resource?: matchN(1, [#orchestrated_resource, list.MaxItems(1) & [_, ...] & [...#orchestrated_resource]])
		orchestration_scope?: matchN(1, [#orchestration_scope, list.MaxItems(1) & [...#orchestration_scope]])
		timeouts?: #timeouts

		// The logical identifier of the policy orchestrator, with the
		// following
		// restrictions:
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the parent.
		policy_orchestrator_id!: string

		// Set to true, if the there are ongoing changes being applied by
		// the
		// orchestrator.
		reconciling?: bool

		// State of the orchestrator. Can be updated to change
		// orchestrator behaviour.
		// Allowed values:
		// - 'ACTIVE' - orchestrator is actively looking for actions to be
		// taken.
		// - 'STOPPED' - orchestrator won't make any changes.
		//
		// Note: There might be more states added in the future. We use
		// string here
		// instead of an enum, to avoid the need of propagating new states
		// to all the
		// client code.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Timestamp when the policy orchestrator resource was last
		// modified.
		update_time?: string
	})

	#orchestrated_resource: close({
		os_policy_assignment_v1_payload?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload"]])

		// ID of the resource to be used while generating set of affected
		// resources.
		//
		// For UPSERT action the value is auto-generated during
		// PolicyOrchestrator
		// creation when not set. When the value is set it should
		// following next
		// restrictions:
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the project.
		//
		// For DELETE action, ID must be specified explicitly during
		// PolicyOrchestrator creation.
		id?: string
	})

	#orchestration_scope: close({
		selectors?: matchN(1, [_#defs."/$defs/orchestration_scope/$defs/selectors", [..._#defs."/$defs/orchestration_scope/$defs/selectors"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload": close({
		// Indicates that this revision has been successfully rolled out
		// in this zone
		// and new VMs will be assigned OS policies from this revision.
		//
		// For a given OS policy assignment, there is only one revision
		// with a value
		// of 'true' for this field.
		baseline?: bool

		// Indicates that this revision deletes the OS policy assignment.
		deleted?: bool

		// OS policy assignment description.
		// Length of the description is limited to 1024 characters.
		description?: string

		// The etag for this OS policy assignment.
		// If this is provided on update, it must match the server's etag.
		etag?: string

		// Resource name.
		//
		// Format:
		// 'projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}'
		//
		// This field is ignored when you create an OS policy assignment.
		name?: string

		// Indicates that reconciliation is in progress for the revision.
		// This value is 'true' when the 'rollout_state' is one of:
		// * IN_PROGRESS
		// * CANCELLING
		reconciling?: bool

		// The timestamp that the revision was created.
		revision_create_time?: string
		instance_filter?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter"]])
		os_policies?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies", [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies"]])
		rollout?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/rollout", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/rollout"]])

		// The assignment revision ID
		// A new revision is committed whenever a rollout is triggered for
		// a OS policy
		// assignment
		revision_id?: string

		// OS policy assignment rollout state
		// Possible values:
		// IN_PROGRESS
		// CANCELLING
		// CANCELLED
		// SUCCEEDED
		rollout_state?: string

		// Server generated unique id for the OS policy assignment
		// resource.
		uid?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter": close({
		exclusion_labels?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/exclusion_labels", [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/exclusion_labels"]])
		inclusion_labels?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/inclusion_labels", [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/inclusion_labels"]])
		inventories?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/inventories", [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/inventories"]])

		// Target all VMs in the project. If true, no other criteria is
		// permitted.
		all?: bool
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/exclusion_labels": close({
		// Labels are identified by key/value pairs in this map.
		// A VM should contain all the key/value pairs specified in this
		// map to be selected.
		labels?: [string]: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/inclusion_labels": close({
		// Labels are identified by key/value pairs in this map.
		// A VM should contain all the key/value pairs specified in this
		// map to be selected.
		labels?: [string]: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/instance_filter/$defs/inventories": close({
		// The OS short name
		os_short_name!: string

		// The OS version
		//
		// Prefix matches are supported if asterisk(*) is provided as the
		// last character. For example, to match all versions with a major
		// version of '7', specify the following value for this field
		// '7.*'
		//
		// An empty string matches all OS versions.
		os_version?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies": close({
		// This flag determines the OS policy compliance status when none
		// of the
		// resource groups within the policy are applicable for a VM. Set
		// this value
		// to 'true' if the policy needs to be reported as compliant even
		// if the
		// policy has nothing to validate or enforce.
		allow_no_resource_group_match?: bool

		// Policy description.
		// Length of the description is limited to 1024 characters.
		description?: string

		// The id of the OS policy with the following restrictions:
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the assignment.
		id!: string
		resource_groups?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups", [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups"]])

		// Policy mode Possible values: ["VALIDATION", "ENFORCEMENT"]
		mode!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups": close({
		inventory_filters?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/inventory_filters", [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/inventory_filters"]])
		resources?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources", [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources"]])
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/inventory_filters": close({
		// The OS short name
		os_short_name!: string

		// The OS version
		//
		// Prefix matches are supported if asterisk(*) is provided as the
		// last character. For example, to match all versions with a major
		// version of '7', specify the following value for this field
		// '7.*'
		//
		// An empty string matches all OS versions.
		os_version?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources": close({
		exec?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec"]])
		file?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file"]])
		pkg?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg"]])
		repository?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository"]])

		// The id of the resource with the following restrictions:
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the OS policy.
		id!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec": close({
		enforce?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce"]])
		validate?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate"]])
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce": close({
		// Optional arguments to pass to the source during execution.
		args?: [...string]

		// The script interpreter to use. Possible values: ["NONE",
		// "SHELL", "POWERSHELL"]
		interpreter!: string

		// Only recorded for enforce Exec.
		// Path to an output file (that is created by this Exec) whose
		// content will be recorded in OSPolicyResourceCompliance after a
		// successful run. Absence or failure to read this file will
		// result in
		// this ExecResource being non-compliant. Output file size is
		// limited to
		// 500K bytes.
		output_file_path?: string
		file?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file"]])

		// An inline script.
		// The size of the script is limited to 32KiB.
		script?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file": close({
		gcs?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		//
		// Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate": close({
		// Optional arguments to pass to the source during execution.
		args?: [...string]

		// The script interpreter to use. Possible values: ["NONE",
		// "SHELL", "POWERSHELL"]
		interpreter!: string

		// Only recorded for enforce Exec.
		// Path to an output file (that is created by this Exec) whose
		// content will be recorded in OSPolicyResourceCompliance after a
		// successful run. Absence or failure to read this file will
		// result in
		// this ExecResource being non-compliant. Output file size is
		// limited to
		// 500K bytes.
		output_file_path?: string
		file?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file"]])

		// An inline script.
		// The size of the script is limited to 32KiB.
		script?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file": close({
		gcs?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		//
		// Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file": close({
		// A a file with this content.
		// The size of the content is limited to 32KiB.
		content?: string

		// The absolute path of the file within the VM.
		path!: string

		// Consists of three octal digits which represent, in
		// order, the permissions of the owner, group, and other users for
		// the
		// file (similarly to the numeric mode used in the linux chmod
		// utility). Each digit represents a three bit number with the 4
		// bit
		// corresponding to the read permissions, the 2 bit corresponds to
		// the
		// write bit, and the one bit corresponds to the execute
		// permission.
		// Default behavior is 755.
		//
		// Below are some examples of permissions and their associated
		// values:
		// read, write, and execute: 7
		// read and execute: 5
		// read and write: 6
		// read only: 4
		permissions?: string
		file?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file"]])

		// Desired state of the file. Possible values: ["PRESENT",
		// "ABSENT", "CONTENTS_MATCH"]
		state!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file": close({
		gcs?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		//
		// Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg": close({
		apt?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/apt", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/apt"]])
		deb?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb"]])
		googet?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/googet", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/googet"]])
		msi?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi"]])
		rpm?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm"]])
		yum?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/yum", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/yum"]])
		zypper?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/zypper", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/zypper"]])

		// The desired state the agent should maintain for this package.
		// Possible values: ["INSTALLED", "REMOVED"]
		desired_state!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/apt": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb": close({
		source?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source"]])

		// Whether dependencies should also be installed.
		// - install when false: 'dpkg -i package'
		// - install when true: 'apt-get update && apt-get -y install
		// package.deb'
		pull_deps?: bool
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source": close({
		gcs?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		//
		// Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/googet": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi": close({
		source?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source"]])

		// Additional properties to use during installation.
		// This should be in the format of Property=Setting.
		// Appended to the defaults of 'ACTION=INSTALL
		// REBOOT=ReallySuppress'.
		properties?: [...string]
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source": close({
		gcs?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		//
		// Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm": close({
		source?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source"]])

		// Whether dependencies should also be installed.
		// - install when false: 'rpm --upgrade --replacepkgs package.rpm'
		// - install when true: 'yum -y install package.rpm' or
		// 'zypper -y install package.rpm'
		pull_deps?: bool
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source": close({
		gcs?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		//
		// Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/yum": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/zypper": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository": close({
		apt?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/apt", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/apt"]])
		goo?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/goo", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/goo"]])
		yum?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/yum", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/yum"]])
		zypper?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/zypper", list.MaxItems(1) & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/zypper"]])
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/apt": close({
		// Type of archive files in this repository. Possible values:
		// ["DEB", "DEB_SRC"]
		archive_type!: string

		// List of components for this repository. Must contain at least
		// one
		// item.
		components!: [...string]

		// Distribution of this repository.
		distribution!: string

		// URI of the key file for this repository. The agent maintains a
		// keyring at '/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg'.
		gpg_key?: string

		// URI for this repository.
		uri!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/goo": close({
		// The name of the repository.
		name!: string

		// The url of the repository.
		url!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/yum": close({
		// The location of the repository directory.
		base_url!: string

		// The display name of the repository.
		display_name?: string

		// URIs of GPG keys.
		gpg_keys?: [...string]

		// A one word, unique name for this repository. This is the 'repo
		// id' in the yum config file and also the 'display_name' if
		// 'display_name' is omitted. This id is also used as the unique
		// identifier when checking for resource conflicts.
		id!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/zypper": close({
		// The location of the repository directory.
		base_url!: string

		// The display name of the repository.
		display_name?: string

		// URIs of GPG keys.
		gpg_keys?: [...string]

		// A one word, unique name for this repository. This is the 'repo
		// id' in the zypper config file and also the 'display_name' if
		// 'display_name' is omitted. This id is also used as the unique
		// identifier when checking for GuestPolicy conflicts.
		id!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/rollout": close({
		disruption_budget?: matchN(1, [_#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/rollout/$defs/disruption_budget", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/rollout/$defs/disruption_budget"]])

		// This determines the minimum duration of time to wait after the
		// configuration changes are applied through the current rollout.
		// A
		// VM continues to count towards the 'disruption_budget' at least
		// until this duration of time has passed after configuration
		// changes are
		// applied.
		min_wait_duration!: string
	})

	_#defs: "/$defs/orchestrated_resource/$defs/os_policy_assignment_v1_payload/$defs/rollout/$defs/disruption_budget": close({
		// Specifies a fixed value.
		fixed?: number

		// Specifies the relative value defined as a percentage, which
		// will be
		// multiplied by a reference value.
		percent?: number
	})

	_#defs: "/$defs/orchestration_scope/$defs/selectors": close({
		location_selector?: matchN(1, [_#defs."/$defs/orchestration_scope/$defs/selectors/$defs/location_selector", list.MaxItems(1) & [..._#defs."/$defs/orchestration_scope/$defs/selectors/$defs/location_selector"]])
		resource_hierarchy_selector?: matchN(1, [_#defs."/$defs/orchestration_scope/$defs/selectors/$defs/resource_hierarchy_selector", list.MaxItems(1) & [..._#defs."/$defs/orchestration_scope/$defs/selectors/$defs/resource_hierarchy_selector"]])
	})

	_#defs: "/$defs/orchestration_scope/$defs/selectors/$defs/location_selector": close({
		// Names of the locations in scope.
		// Format: 'us-central1-a'
		included_locations?: [...string]
	})

	_#defs: "/$defs/orchestration_scope/$defs/selectors/$defs/resource_hierarchy_selector": close({
		// Names of the folders in scope.
		// Format: 'folders/{folder_id}'
		included_folders?: [...string]

		// Names of the projects in scope.
		// Format: 'projects/{project_number}'
		included_projects?: [...string]
	})
}
