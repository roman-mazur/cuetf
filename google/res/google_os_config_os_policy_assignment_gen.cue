package res

import "list"

#google_os_config_os_policy_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_os_config_os_policy_assignment")
	close({
		// Output only. Indicates that this revision has been successfully
		// rolled out in this zone and new VMs will be assigned OS
		// policies from this revision.
		// For a given OS policy assignment, there is only one revision
		// with a value of 'true' for this field.
		baseline?: bool
		instance_filter!: matchN(1, [#instance_filter, list.MaxItems(1) & [_, ...] & [...#instance_filter]])

		// Output only. Indicates that this revision deletes the OS policy
		// assignment.
		deleted?: bool

		// OS policy assignment description. Length of the description is
		// limited to 1024 characters.
		description?: string

		// The etag for this OS policy assignment. If this is provided on
		// update, it must match the server's etag.
		etag?: string

		// The location for the resource
		location!: string
		id?:       string

		// Resource name.
		name!: string

		// The project for the resource
		project?: string

		// Output only. Indicates that reconciliation is in progress for
		// the revision. This value is 'true' when the 'rollout_state' is
		// one of:
		// * IN_PROGRESS
		// * CANCELLING
		reconciling?: bool

		// Output only. The timestamp that the revision was created.
		revision_create_time?: string
		os_policies!: matchN(1, [#os_policies, [_, ...] & [...#os_policies]])
		rollout!: matchN(1, [#rollout, list.MaxItems(1) & [_, ...] & [...#rollout]])
		timeouts?: #timeouts

		// Output only. The assignment revision ID A new revision is
		// committed whenever a rollout is triggered for a OS policy
		// assignment
		revision_id?: string

		// Output only. OS policy assignment rollout state
		rollout_state?: string

		// Set to true to skip awaiting rollout during resource creation
		// and update.
		skip_await_rollout?: bool

		// Output only. Server generated unique id for the OS policy
		// assignment resource.
		uid?: string
	})

	#instance_filter: close({
		exclusion_labels?: matchN(1, [_#defs."/$defs/instance_filter/$defs/exclusion_labels", [..._#defs."/$defs/instance_filter/$defs/exclusion_labels"]])
		inclusion_labels?: matchN(1, [_#defs."/$defs/instance_filter/$defs/inclusion_labels", [..._#defs."/$defs/instance_filter/$defs/inclusion_labels"]])
		inventories?: matchN(1, [_#defs."/$defs/instance_filter/$defs/inventories", [..._#defs."/$defs/instance_filter/$defs/inventories"]])

		// Target all VMs in the project. If true, no other criteria is
		// permitted.
		all?: bool
	})

	#os_policies: close({
		// This flag determines the OS policy compliance status when none
		// of the resource groups within the policy are applicable for a
		// VM. Set this value to 'true' if the policy needs to be
		// reported as compliant even if the policy has nothing to
		// validate or enforce.
		allow_no_resource_group_match?: bool

		// Policy description. Length of the description is limited to
		// 1024 characters.
		description?: string

		// The id of the OS policy with the following restrictions:
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the assignment.
		id!: string
		resource_groups!: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups", [_, ...] & [..._#defs."/$defs/os_policies/$defs/resource_groups"]])

		// Policy mode Possible values: ["MODE_UNSPECIFIED", "VALIDATION",
		// "ENFORCEMENT"]
		mode!: string
	})

	#rollout: close({
		disruption_budget!: matchN(1, [_#defs."/$defs/rollout/$defs/disruption_budget", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rollout/$defs/disruption_budget"]])

		// This determines the minimum duration of time to wait after the
		// configuration changes are applied through the current rollout.
		// A VM continues to count towards the 'disruption_budget' at
		// least until this duration of time has passed after
		// configuration changes are applied.
		min_wait_duration!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/instance_filter/$defs/exclusion_labels": close({
		// Labels are identified by key/value pairs in this map. A VM
		// should contain all the key/value pairs specified in this map
		// to be selected.
		labels?: [string]: string
	})

	_#defs: "/$defs/instance_filter/$defs/inclusion_labels": close({
		// Labels are identified by key/value pairs in this map. A VM
		// should contain all the key/value pairs specified in this map
		// to be selected.
		labels?: [string]: string
	})

	_#defs: "/$defs/instance_filter/$defs/inventories": close({
		// The OS short name
		os_short_name!: string

		// The OS version Prefix matches are supported if asterisk(*) is
		// provided as the last character. For example, to match all
		// versions with a major version of '7', specify the following
		// value for this field '7.*' An empty string matches all OS
		// versions.
		os_version?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups": close({
		inventory_filters?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/inventory_filters", [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/inventory_filters"]])
		resources!: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources", [_, ...] & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources"]])
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/inventory_filters": close({
		// The OS short name
		os_short_name!: string

		// The OS version
		// Prefix matches are supported if asterisk(*) is provided as the
		// last character. For example, to match all versions with a
		// major version of '7', specify the following value for this
		// field '7.*'
		// An empty string matches all OS versions.
		os_version?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources": close({
		exec?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec"]])
		file?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file"]])
		pkg?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg"]])
		repository?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository"]])

		// The id of the resource with the following restrictions:
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the OS policy.
		id!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec": close({
		enforce?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce"]])
		validate!: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate"]])
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce": close({
		// Optional arguments to pass to the source during execution.
		args?: [...string]

		// The script interpreter to use. Possible values:
		// ["INTERPRETER_UNSPECIFIED", "NONE", "SHELL", "POWERSHELL"]
		interpreter!: string

		// Only recorded for enforce Exec. Path to an output file (that is
		// created by this Exec) whose content will be recorded in
		// OSPolicyResourceCompliance after a successful run. Absence or
		// failure to read this file will result in this ExecResource
		// being non-compliant. Output file size is limited to 100K
		// bytes.
		output_file_path?: string
		file?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file"]])

		// An inline script. The size of the script is limited to 1024
		// characters.
		script?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file": close({
		gcs?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type: Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: number

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/enforce/$defs/file/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate": close({
		// Optional arguments to pass to the source during execution.
		args?: [...string]

		// The script interpreter to use. Possible values:
		// ["INTERPRETER_UNSPECIFIED", "NONE", "SHELL", "POWERSHELL"]
		interpreter!: string

		// Only recorded for enforce Exec. Path to an output file (that is
		// created by this Exec) whose content will be recorded in
		// OSPolicyResourceCompliance after a successful run. Absence or
		// failure to read this file will result in this ExecResource
		// being non-compliant. Output file size is limited to 100K
		// bytes.
		output_file_path?: string
		file?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file"]])

		// An inline script. The size of the script is limited to 1024
		// characters.
		script?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file": close({
		gcs?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		// Remote: A checksum must be specified. Cloud Storage: An object
		// generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: number

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/exec/$defs/validate/$defs/file/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file": close({
		// A a file with this content. The size of the content is limited
		// to 1024 characters.
		content?: string

		// The absolute path of the file within the VM.
		path!: string

		// Consists of three octal digits which represent, in order, the
		// permissions of the owner, group, and other users for the file
		// (similarly to the numeric mode used in the linux chmod
		// utility). Each digit represents a three bit number with the 4
		// bit corresponding to the read permissions, the 2 bit
		// corresponds to the write bit, and the one bit corresponds to
		// the execute permission. Default behavior is 755.
		// Below are some examples of permissions and their associated
		// values: read, write, and execute: 7 read and execute: 5 read
		// and write: 6 read only: 4
		permissions?: string
		file?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file"]])

		// Desired state of the file. Possible values:
		// ["DESIRED_STATE_UNSPECIFIED", "PRESENT", "ABSENT",
		// "CONTENTS_MATCH"]
		state!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file": close({
		gcs?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type: Remote: A checksum must be specified.
		// Cloud Storage: An object generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: number

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/file/$defs/file/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg": close({
		apt?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/apt", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/apt"]])
		deb?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb"]])
		googet?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/googet", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/googet"]])
		msi?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi"]])
		rpm?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm"]])
		yum?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/yum", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/yum"]])
		zypper?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/zypper", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/zypper"]])

		// The desired state the agent should maintain for this package.
		// Possible values: ["DESIRED_STATE_UNSPECIFIED", "INSTALLED",
		// "REMOVED"]
		desired_state!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/apt": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb": close({
		source!: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source"]])

		// Whether dependencies should also be installed. - install when
		// false: 'dpkg -i package' - install when true: 'apt-get update
		// && apt-get -y install package.deb'
		pull_deps?: bool
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source": close({
		gcs?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		// Remote: A checksum must be specified. Cloud Storage: An object
		// generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: number

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/deb/$defs/source/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/googet": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi": close({
		source!: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source"]])

		// Additional properties to use during installation. This should
		// be in the format of Property=Setting. Appended to the defaults
		// of 'ACTION=INSTALL REBOOT=ReallySuppress'.
		properties?: [...string]
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source": close({
		gcs?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		// Remote: A checksum must be specified. Cloud Storage: An object
		// generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: number

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/msi/$defs/source/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm": close({
		source!: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source"]])

		// Whether dependencies should also be installed. - install when
		// false: 'rpm --upgrade --replacepkgs package.rpm' - install
		// when true: 'yum -y install package.rpm' or 'zypper -y install
		// package.rpm'
		pull_deps?: bool
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source": close({
		gcs?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/gcs"]])
		remote?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/remote"]])

		// Defaults to false. When false, files are subject to validations
		// based on the file type:
		// Remote: A checksum must be specified. Cloud Storage: An object
		// generation number must be specified.
		allow_insecure?: bool

		// A local path within the VM to use.
		local_path?: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/gcs": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object.
		generation?: number

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/rpm/$defs/source/$defs/remote": close({
		// SHA256 checksum of the remote file.
		sha256_checksum?: string

		// URI from which to fetch the object. It should contain both the
		// protocol and path following the format
		// '{protocol}://{location}'.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/yum": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/pkg/$defs/zypper": close({
		// Package name.
		name!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository": close({
		apt?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/apt", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/apt"]])
		goo?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/goo", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/goo"]])
		yum?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/yum", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/yum"]])
		zypper?: matchN(1, [_#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/zypper", list.MaxItems(1) & [..._#defs."/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/zypper"]])
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/apt": close({
		// Type of archive files in this repository. Possible values:
		// ["ARCHIVE_TYPE_UNSPECIFIED", "DEB", "DEB_SRC"]
		archive_type!: string

		// List of components for this repository. Must contain at least
		// one item.
		components!: [...string]

		// Distribution of this repository.
		distribution!: string

		// URI of the key file for this repository. The agent maintains a
		// keyring at
		// '/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg'.
		gpg_key?: string

		// URI for this repository.
		uri!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/goo": close({
		// The name of the repository.
		name!: string

		// The url of the repository.
		url!: string
	})

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/yum": close({
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

	_#defs: "/$defs/os_policies/$defs/resource_groups/$defs/resources/$defs/repository/$defs/zypper": close({
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

	_#defs: "/$defs/rollout/$defs/disruption_budget": close({
		// Specifies a fixed value.
		fixed?: number

		// Specifies the relative value defined as a percentage, which
		// will be multiplied by a reference value.
		percent?: number
	})
}
