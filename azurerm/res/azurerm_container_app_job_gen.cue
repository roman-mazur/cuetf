package res

import "list"

#azurerm_container_app_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app_job")
	close({
		container_app_environment_id!: string
		event_stream_endpoint?:        string
		id?:                           string
		location!:                     string
		name!:                         string
		outbound_ip_addresses?: [...string]
		replica_retry_limit?:        number
		replica_timeout_in_seconds!: number
		resource_group_name!:        string
		event_trigger_config?: matchN(1, [#event_trigger_config, list.MaxItems(1) & [...#event_trigger_config]])
		tags?: [string]: string
		workload_profile_name?: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		manual_trigger_config?: matchN(1, [#manual_trigger_config, list.MaxItems(1) & [...#manual_trigger_config]])
		registry?: matchN(1, [#registry, [...#registry]])
		schedule_trigger_config?: matchN(1, [#schedule_trigger_config, list.MaxItems(1) & [...#schedule_trigger_config]])
		secret?: matchN(1, [#secret, [...#secret]])
		template?: matchN(1, [#template, list.MaxItems(1) & [_, ...] & [...#template]])
		timeouts?: #timeouts
	})

	#event_trigger_config: close({
		scale?: matchN(1, [_#defs."/$defs/event_trigger_config/$defs/scale", [..._#defs."/$defs/event_trigger_config/$defs/scale"]])
		parallelism?:              number
		replica_completion_count?: number
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#manual_trigger_config: close({
		parallelism?:              number
		replica_completion_count?: number
	})

	#registry: close({
		// ID of the System or User Managed Identity used to pull images
		// from the Container Registry
		identity?: string

		// The name of the Secret Reference containing the password value
		// for this user on the Container Registry.
		password_secret_name?: string

		// The hostname for the Container Registry.
		server!: string

		// The username to use for this Container Registry.
		username?: string
	})

	#schedule_trigger_config: close({
		cron_expression!:          string
		parallelism?:              number
		replica_completion_count?: number
	})

	#secret: close({
		// The identity to use for accessing key vault reference.
		identity?: string

		// The Key Vault Secret ID. Could be either one of `id` or
		// `versionless_id`.
		key_vault_secret_id?: string

		// The secret name.
		name!: string

		// The value for this secret.
		value?: string
	})

	#template: close({
		container?: matchN(1, [_#defs."/$defs/template/$defs/container", [_, ...] & [..._#defs."/$defs/template/$defs/container"]])
		init_container?: matchN(1, [_#defs."/$defs/template/$defs/init_container", [..._#defs."/$defs/template/$defs/init_container"]])
		volume?: matchN(1, [_#defs."/$defs/template/$defs/volume", [..._#defs."/$defs/template/$defs/volume"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/event_trigger_config/$defs/scale": close({
		rules?: matchN(1, [_#defs."/$defs/event_trigger_config/$defs/scale/$defs/rules", [..._#defs."/$defs/event_trigger_config/$defs/scale/$defs/rules"]])
		max_executions?:              number
		min_executions?:              number
		polling_interval_in_seconds?: number
	})

	_#defs: "/$defs/event_trigger_config/$defs/scale/$defs/rules": close({
		authentication?: matchN(1, [_#defs."/$defs/event_trigger_config/$defs/scale/$defs/rules/$defs/authentication", [..._#defs."/$defs/event_trigger_config/$defs/scale/$defs/rules/$defs/authentication"]])
		custom_rule_type!: string
		metadata!: [string]: string
		name!: string
	})

	_#defs: "/$defs/event_trigger_config/$defs/scale/$defs/rules/$defs/authentication": close({
		secret_name!:       string
		trigger_parameter!: string
	})

	_#defs: "/$defs/template/$defs/container": close({
		// A list of args to pass to the container.
		args?: [...string]

		// A command to pass to the container to override the default.
		// This is provided as a list of command line elements without
		// spaces.
		command?: [...string]

		// The amount of vCPU to allocate to the container.
		cpu!: number

		// The amount of ephemeral storage available to the Container App.
		ephemeral_storage?: string

		// The image to use to create the container.
		image!: string

		// The amount of memory to allocate to the container.
		memory!: string
		env?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/env", [..._#defs."/$defs/template/$defs/container/$defs/env"]])
		liveness_probe?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/liveness_probe", [..._#defs."/$defs/template/$defs/container/$defs/liveness_probe"]])
		readiness_probe?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/readiness_probe", [..._#defs."/$defs/template/$defs/container/$defs/readiness_probe"]])
		startup_probe?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/startup_probe", [..._#defs."/$defs/template/$defs/container/$defs/startup_probe"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/volume_mounts", [..._#defs."/$defs/template/$defs/container/$defs/volume_mounts"]])

		// The name of the container.
		name!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/env": close({
		// The name of the environment variable for the container.
		name!: string

		// The name of the secret that contains the value for this
		// environment variable.
		secret_name?: string

		// The value for this environment variable. **NOTE:** This value
		// is ignored if `secret_name` is used
		value?: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/liveness_probe": close({
		// The number of consecutive failures required to consider this
		// probe as failed. Possible values are between `1` and `30`.
		// Defaults to `3`.
		failure_count_threshold?: number

		// The probe hostname. Defaults to the pod IP address. Setting a
		// value for `Host` in `headers` can be used to override this for
		// `http` and `https` type probes.
		host?: string

		// The number of seconds elapsed after the container has started
		// before the probe is initiated. Possible values are between `0`
		// and `60`. Defaults to `1` seconds.
		initial_delay?: number

		// How often, in seconds, the probe should run. Possible values
		// are between `1` and `240`. Defaults to `10`
		interval_seconds?: number

		// The URI to use with the `host` for http type probes. Not valid
		// for `TCP` type probes. Defaults to `/`.
		path?: string

		// The port number on which to connect. Possible values are
		// between `1` and `65535`.
		port!: number

		// The time in seconds after the container is sent the termination
		// signal before the process if forcibly killed.
		termination_grace_period_seconds?: number
		header?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/liveness_probe/$defs/header", [..._#defs."/$defs/template/$defs/container/$defs/liveness_probe/$defs/header"]])

		// Time in seconds after which the probe times out. Possible
		// values are between `1` an `240`. Defaults to `1`.
		timeout?: number

		// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
		transport!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/liveness_probe/$defs/header": close({
		// The HTTP Header Name.
		name!: string

		// The HTTP Header value.
		value!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/readiness_probe": close({
		// The number of consecutive failures required to consider this
		// probe as failed. Possible values are between `1` and `30`.
		// Defaults to `3`.
		failure_count_threshold?: number

		// The probe hostname. Defaults to the pod IP address. Setting a
		// value for `Host` in `headers` can be used to override this for
		// `http` and `https` type probes.
		host?: string

		// The number of seconds elapsed after the container has started
		// before the probe is initiated. Possible values are between `0`
		// and `60`. Defaults to `0` seconds.
		initial_delay?: number

		// How often, in seconds, the probe should run. Possible values
		// are between `1` and `240`. Defaults to `10`
		interval_seconds?: number

		// The URI to use for http type probes. Not valid for `TCP` type
		// probes. Defaults to `/`.
		path?: string

		// The port number on which to connect. Possible values are
		// between `1` and `65535`.
		port!: number

		// The number of consecutive successful responses required to
		// consider this probe as successful. Possible values are between
		// `1` and `10`. Defaults to `3`.
		success_count_threshold?: number
		header?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/readiness_probe/$defs/header", [..._#defs."/$defs/template/$defs/container/$defs/readiness_probe/$defs/header"]])

		// Time in seconds after which the probe times out. Possible
		// values are between `1` an `240`. Defaults to `1`.
		timeout?: number

		// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
		transport!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/readiness_probe/$defs/header": close({
		// The HTTP Header Name.
		name!: string

		// The HTTP Header value.
		value!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/startup_probe": close({
		// The number of consecutive failures required to consider this
		// probe as failed. Possible values are between `1` and `30`.
		// Defaults to `3`.
		failure_count_threshold?: number

		// The probe hostname. Defaults to the pod IP address. Setting a
		// value for `Host` in `headers` can be used to override this for
		// `http` and `https` type probes.
		host?: string

		// The number of seconds elapsed after the container has started
		// before the probe is initiated. Possible values are between `0`
		// and `60`. Defaults to `0` seconds.
		initial_delay?: number

		// How often, in seconds, the probe should run. Possible values
		// are between `1` and `240`. Defaults to `10`
		interval_seconds?: number

		// The URI to use with the `host` for http type probes. Not valid
		// for `TCP` type probes. Defaults to `/`.
		path?: string

		// The port number on which to connect. Possible values are
		// between `1` and `65535`.
		port!: number

		// The time in seconds after the container is sent the termination
		// signal before the process if forcibly killed.
		termination_grace_period_seconds?: number
		header?: matchN(1, [_#defs."/$defs/template/$defs/container/$defs/startup_probe/$defs/header", [..._#defs."/$defs/template/$defs/container/$defs/startup_probe/$defs/header"]])

		// Time in seconds after which the probe times out. Possible
		// values are between `1` an `240`. Defaults to `1`.
		timeout?: number

		// Type of probe. Possible values are `TCP`, `HTTP`, and `HTTPS`.
		transport!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/startup_probe/$defs/header": close({
		// The HTTP Header Name.
		name!: string

		// The HTTP Header value.
		value!: string
	})

	_#defs: "/$defs/template/$defs/container/$defs/volume_mounts": close({
		// The name of the Volume to be mounted in the container.
		name!: string

		// The path in the container at which to mount this volume.
		path!: string

		// The sub path of the volume to be mounted in the container.
		sub_path?: string
	})

	_#defs: "/$defs/template/$defs/init_container": close({
		// A list of args to pass to the container.
		args?: [...string]

		// A command to pass to the container to override the default.
		// This is provided as a list of command line elements without
		// spaces.
		command?: [...string]

		// The amount of vCPU to allocate to the container.
		cpu?: number

		// The amount of ephemeral storage available to the Container App.
		ephemeral_storage?: string

		// The image to use to create the container.
		image!: string
		env?: matchN(1, [_#defs."/$defs/template/$defs/init_container/$defs/env", [..._#defs."/$defs/template/$defs/init_container/$defs/env"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/template/$defs/init_container/$defs/volume_mounts", [..._#defs."/$defs/template/$defs/init_container/$defs/volume_mounts"]])

		// The amount of memory to allocate to the container.
		memory?: string

		// The name of the container.
		name!: string
	})

	_#defs: "/$defs/template/$defs/init_container/$defs/env": close({
		// The name of the environment variable for the container.
		name!: string

		// The name of the secret that contains the value for this
		// environment variable.
		secret_name?: string

		// The value for this environment variable. **NOTE:** This value
		// is ignored if `secret_name` is used
		value?: string
	})

	_#defs: "/$defs/template/$defs/init_container/$defs/volume_mounts": close({
		// The name of the Volume to be mounted in the container.
		name!: string

		// The path in the container at which to mount this volume.
		path!: string

		// The sub path of the volume to be mounted in the container.
		sub_path?: string
	})

	_#defs: "/$defs/template/$defs/volume": close({
		// Mount options used while mounting the AzureFile. Must be a
		// comma-separated string.
		mount_options?: string

		// The name of the volume.
		name!: string

		// The name of the `AzureFile` storage. Required when
		// `storage_type` is `AzureFile`
		storage_name?: string

		// The type of storage volume. Possible values include `AzureFile`
		// and `EmptyDir`. Defaults to `EmptyDir`.
		storage_type?: string
	})
}
