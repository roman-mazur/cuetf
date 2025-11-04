package res

import "list"

#google_os_config_patch_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_os_config_patch_deployment")
	close({
		// Time the patch deployment was created. Timestamp is in RFC3339
		// text format.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Description of the patch deployment. Length of the description
		// is limited to 1024 characters.
		description?: string

		// Duration of the patch. After the duration ends, the patch times
		// out.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s"
		duration?: string
		id?:       string

		// The last time a patch job was started by this deployment.
		// Timestamp is in RFC3339 text format.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		last_execute_time?: string

		// Unique name for the patch deployment resource in a project.
		// The patch deployment name is in the form:
		// projects/{project_id}/patchDeployments/{patchDeploymentId}.
		name?: string

		// A name for the patch deployment in the project. When creating a
		// name the following rules apply:
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the project.
		patch_deployment_id!: string
		instance_filter!: matchN(1, [#instance_filter, list.MaxItems(1) & [_, ...] & [...#instance_filter]])
		one_time_schedule?: matchN(1, [#one_time_schedule, list.MaxItems(1) & [...#one_time_schedule]])
		patch_config?: matchN(1, [#patch_config, list.MaxItems(1) & [...#patch_config]])
		recurring_schedule?: matchN(1, [#recurring_schedule, list.MaxItems(1) & [...#recurring_schedule]])
		rollout?: matchN(1, [#rollout, list.MaxItems(1) & [...#rollout]])
		timeouts?: #timeouts
		project?:  string

		// Time the patch deployment was last updated. Timestamp is in
		// RFC3339 text format.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#instance_filter: close({
		// Target all VM instances in the project. If true, no other
		// criteria is permitted.
		all?: bool

		// Targets VMs whose name starts with one of these prefixes.
		// Similar to labels, this is another way to group
		// VMs when targeting configs, for example prefix="prod-".
		instance_name_prefixes?: [...string]

		// Targets any of the VM instances specified. Instances are
		// specified by their URI in the 'form
		// zones/{{zone}}/instances/{{instance_name}}',
		// 'projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}',
		// or
		// 'https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}'
		instances?: [...string]
		group_labels?: matchN(1, [_#defs."/$defs/instance_filter/$defs/group_labels", [..._#defs."/$defs/instance_filter/$defs/group_labels"]])

		// Targets VM instances in ANY of these zones. Leave empty to
		// target VM instances in any zone.
		zones?: [...string]
	})

	#one_time_schedule: close({
		// The desired patch job execution time. A timestamp in RFC3339
		// UTC "Zulu" format,
		// accurate to nanoseconds. Example:
		// "2014-10-02T15:01:23.045123456Z".
		execute_time!: string
	})

	#patch_config: close({
		// Allows the patch job to run on Managed instance groups (MIGs).
		mig_instances_allowed?: bool
		apt?: matchN(1, [_#defs."/$defs/patch_config/$defs/apt", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/apt"]])

		// Post-patch reboot settings. Possible values: ["DEFAULT",
		// "ALWAYS", "NEVER"]
		reboot_config?: string
		goo?: matchN(1, [_#defs."/$defs/patch_config/$defs/goo", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/goo"]])
		post_step?: matchN(1, [_#defs."/$defs/patch_config/$defs/post_step", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/post_step"]])
		pre_step?: matchN(1, [_#defs."/$defs/patch_config/$defs/pre_step", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/pre_step"]])
		windows_update?: matchN(1, [_#defs."/$defs/patch_config/$defs/windows_update", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/windows_update"]])
		yum?: matchN(1, [_#defs."/$defs/patch_config/$defs/yum", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/yum"]])
		zypper?: matchN(1, [_#defs."/$defs/patch_config/$defs/zypper", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/zypper"]])
	})

	#recurring_schedule: close({
		// The end time at which a recurring patch deployment schedule is
		// no longer active.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		end_time?: string

		// The time the last patch job ran successfully.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		last_execute_time?: string
		monthly?: matchN(1, [_#defs."/$defs/recurring_schedule/$defs/monthly", list.MaxItems(1) & [..._#defs."/$defs/recurring_schedule/$defs/monthly"]])

		// The time the next patch job is scheduled to run.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		next_execute_time?: string
		time_of_day!: matchN(1, [_#defs."/$defs/recurring_schedule/$defs/time_of_day", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/recurring_schedule/$defs/time_of_day"]])

		// The time that the recurring schedule becomes effective.
		// Defaults to createTime of the patch deployment.
		// A timestamp in RFC3339 UTC "Zulu" format, accurate to
		// nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
		start_time?: string
		time_zone!: matchN(1, [_#defs."/$defs/recurring_schedule/$defs/time_zone", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/recurring_schedule/$defs/time_zone"]])
		weekly?: matchN(1, [_#defs."/$defs/recurring_schedule/$defs/weekly", list.MaxItems(1) & [..._#defs."/$defs/recurring_schedule/$defs/weekly"]])
	})

	#rollout: close({
		disruption_budget!: matchN(1, [_#defs."/$defs/rollout/$defs/disruption_budget", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rollout/$defs/disruption_budget"]])

		// Mode of the patch rollout. Possible values: ["ZONE_BY_ZONE",
		// "CONCURRENT_ZONES"]
		mode!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/instance_filter/$defs/group_labels": close({
		// Compute Engine instance labels that must be present for a VM
		// instance to be targeted by this filter
		labels!: [string]: string
	})

	_#defs: "/$defs/patch_config/$defs/apt": close({
		// List of packages to exclude from update. These packages will be
		// excluded.
		excludes?: [...string]

		// An exclusive list of packages to be updated. These are the only
		// packages that will be updated.
		// If these packages are not installed, they will be ignored. This
		// field cannot be specified with
		// any other patch configuration fields.
		exclusive_packages?: [...string]

		// By changing the type to DIST, the patching is performed using
		// apt-get dist-upgrade instead. Possible values: ["DIST",
		// "UPGRADE"]
		type?: string
	})

	_#defs: "/$defs/patch_config/$defs/goo": close({
		// goo update settings. Use this setting to override the default
		// goo patch rules.
		enabled!: bool
	})

	_#defs: "/$defs/patch_config/$defs/post_step": close({
		linux_exec_step_config?: matchN(1, [_#defs."/$defs/patch_config/$defs/post_step/$defs/linux_exec_step_config", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/post_step/$defs/linux_exec_step_config"]])
		windows_exec_step_config?: matchN(1, [_#defs."/$defs/patch_config/$defs/post_step/$defs/windows_exec_step_config", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/post_step/$defs/windows_exec_step_config"]])
	})

	_#defs: "/$defs/patch_config/$defs/post_step/$defs/linux_exec_step_config": close({
		// Defaults to [0]. A list of possible return values that the
		// execution can return to indicate a success.
		allowed_success_codes?: [...number]
		gcs_object?: matchN(1, [_#defs."/$defs/patch_config/$defs/post_step/$defs/linux_exec_step_config/$defs/gcs_object", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/post_step/$defs/linux_exec_step_config/$defs/gcs_object"]])

		// The script interpreter to use to run the script. If no
		// interpreter is specified the script will
		// be executed directly, which will likely only succeed for
		// scripts with shebang lines. Possible values: ["SHELL",
		// "POWERSHELL"]
		interpreter?: string

		// An absolute path to the executable on the VM.
		local_path?: string
	})

	_#defs: "/$defs/patch_config/$defs/post_step/$defs/linux_exec_step_config/$defs/gcs_object": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object. This is used to
		// ensure that the ExecStep specified by this PatchJob does not
		// change.
		generation_number!: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/patch_config/$defs/post_step/$defs/windows_exec_step_config": close({
		// Defaults to [0]. A list of possible return values that the
		// execution can return to indicate a success.
		allowed_success_codes?: [...number]
		gcs_object?: matchN(1, [_#defs."/$defs/patch_config/$defs/post_step/$defs/windows_exec_step_config/$defs/gcs_object", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/post_step/$defs/windows_exec_step_config/$defs/gcs_object"]])

		// The script interpreter to use to run the script. If no
		// interpreter is specified the script will
		// be executed directly, which will likely only succeed for
		// scripts with shebang lines. Possible values: ["SHELL",
		// "POWERSHELL"]
		interpreter?: string

		// An absolute path to the executable on the VM.
		local_path?: string
	})

	_#defs: "/$defs/patch_config/$defs/post_step/$defs/windows_exec_step_config/$defs/gcs_object": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object. This is used to
		// ensure that the ExecStep specified by this PatchJob does not
		// change.
		generation_number!: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/patch_config/$defs/pre_step": close({
		linux_exec_step_config?: matchN(1, [_#defs."/$defs/patch_config/$defs/pre_step/$defs/linux_exec_step_config", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/pre_step/$defs/linux_exec_step_config"]])
		windows_exec_step_config?: matchN(1, [_#defs."/$defs/patch_config/$defs/pre_step/$defs/windows_exec_step_config", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/pre_step/$defs/windows_exec_step_config"]])
	})

	_#defs: "/$defs/patch_config/$defs/pre_step/$defs/linux_exec_step_config": close({
		// Defaults to [0]. A list of possible return values that the
		// execution can return to indicate a success.
		allowed_success_codes?: [...number]
		gcs_object?: matchN(1, [_#defs."/$defs/patch_config/$defs/pre_step/$defs/linux_exec_step_config/$defs/gcs_object", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/pre_step/$defs/linux_exec_step_config/$defs/gcs_object"]])

		// The script interpreter to use to run the script. If no
		// interpreter is specified the script will
		// be executed directly, which will likely only succeed for
		// scripts with shebang lines. Possible values: ["SHELL",
		// "POWERSHELL"]
		interpreter?: string

		// An absolute path to the executable on the VM.
		local_path?: string
	})

	_#defs: "/$defs/patch_config/$defs/pre_step/$defs/linux_exec_step_config/$defs/gcs_object": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object. This is used to
		// ensure that the ExecStep specified by this PatchJob does not
		// change.
		generation_number!: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/patch_config/$defs/pre_step/$defs/windows_exec_step_config": close({
		// Defaults to [0]. A list of possible return values that the
		// execution can return to indicate a success.
		allowed_success_codes?: [...number]
		gcs_object?: matchN(1, [_#defs."/$defs/patch_config/$defs/pre_step/$defs/windows_exec_step_config/$defs/gcs_object", list.MaxItems(1) & [..._#defs."/$defs/patch_config/$defs/pre_step/$defs/windows_exec_step_config/$defs/gcs_object"]])

		// The script interpreter to use to run the script. If no
		// interpreter is specified the script will
		// be executed directly, which will likely only succeed for
		// scripts with shebang lines. Possible values: ["SHELL",
		// "POWERSHELL"]
		interpreter?: string

		// An absolute path to the executable on the VM.
		local_path?: string
	})

	_#defs: "/$defs/patch_config/$defs/pre_step/$defs/windows_exec_step_config/$defs/gcs_object": close({
		// Bucket of the Cloud Storage object.
		bucket!: string

		// Generation number of the Cloud Storage object. This is used to
		// ensure that the ExecStep specified by this PatchJob does not
		// change.
		generation_number!: string

		// Name of the Cloud Storage object.
		object!: string
	})

	_#defs: "/$defs/patch_config/$defs/windows_update": close({
		// Only apply updates of these windows update classifications. If
		// empty, all updates are applied. Possible values: ["CRITICAL",
		// "SECURITY", "DEFINITION", "DRIVER", "FEATURE_PACK",
		// "SERVICE_PACK", "TOOL", "UPDATE_ROLLUP", "UPDATE"]
		classifications?: [...string]

		// List of KBs to exclude from update.
		excludes?: [...string]

		// An exclusive list of kbs to be updated. These are the only
		// patches that will be updated.
		// This field must not be used with other patch configurations.
		exclusive_patches?: [...string]
	})

	_#defs: "/$defs/patch_config/$defs/yum": close({
		// List of packages to exclude from update. These packages will be
		// excluded.
		excludes?: [...string]

		// An exclusive list of packages to be updated. These are the only
		// packages that will be updated.
		// If these packages are not installed, they will be ignored. This
		// field cannot be specified with
		// any other patch configuration fields.
		exclusive_packages?: [...string]

		// Will cause patch to run yum update-minimal instead.
		minimal?: bool

		// Adds the --security flag to yum update. Not supported on all
		// platforms.
		security?: bool
	})

	_#defs: "/$defs/patch_config/$defs/zypper": close({
		// Install only patches with these categories. Common categories
		// include security, recommended, and feature.
		categories?: [...string]

		// List of packages to exclude from update.
		excludes?: [...string]

		// An exclusive list of patches to be updated. These are the only
		// patches that will be installed using 'zypper patch patch:'
		// command.
		// This field must not be used with any other patch configuration
		// fields.
		exclusive_patches?: [...string]

		// Install only patches with these severities. Common severities
		// include critical, important, moderate, and low.
		severities?: [...string]

		// Adds the --with-optional flag to zypper patch.
		with_optional?: bool

		// Adds the --with-update flag, to zypper patch.
		with_update?: bool
	})

	_#defs: "/$defs/recurring_schedule/$defs/monthly": close({
		week_day_of_month?: matchN(1, [_#defs."/$defs/recurring_schedule/$defs/monthly/$defs/week_day_of_month", list.MaxItems(1) & [..._#defs."/$defs/recurring_schedule/$defs/monthly/$defs/week_day_of_month"]])

		// One day of the month. 1-31 indicates the 1st to the 31st day.
		// -1 indicates the last day of the month.
		// Months without the target day will be skipped. For example, a
		// schedule to run "every month on the 31st"
		// will not run in February, April, June, etc.
		month_day?: number
	})

	_#defs: "/$defs/recurring_schedule/$defs/monthly/$defs/week_day_of_month": close({
		// A day of the week. Possible values: ["MONDAY", "TUESDAY",
		// "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day_of_week!: string

		// Represents the number of days before or after the given week
		// day of month that the patch deployment is scheduled for.
		day_offset?: number

		// Week number in a month. 1-4 indicates the 1st to 4th week of
		// the month. -1 indicates the last week of the month.
		week_ordinal!: number
	})

	_#defs: "/$defs/recurring_schedule/$defs/time_of_day": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		// An API may choose to allow the value "24:00:00" for scenarios
		// like business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/recurring_schedule/$defs/time_zone": close({
		// IANA Time Zone Database time zone, e.g. "America/New_York".
		id!: string

		// IANA Time Zone Database version number, e.g. "2019a".
		version?: string
	})

	_#defs: "/$defs/recurring_schedule/$defs/weekly": close({
		// IANA Time Zone Database time zone, e.g. "America/New_York".
		// Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY",
		// "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day_of_week!: string
	})

	_#defs: "/$defs/rollout/$defs/disruption_budget": close({
		// Specifies a fixed value.
		fixed?: number

		// Specifies the relative value defined as a percentage, which
		// will be multiplied by a reference value.
		percentage?: number
	})
}
