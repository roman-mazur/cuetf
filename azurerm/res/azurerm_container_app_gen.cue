package res

import "list"

#azurerm_container_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_app")
	close({
		// The ID of the Container App Environment to host this Container
		// App.
		container_app_environment_id!: string

		// The ID of the Custom Domain Verification for this Container
		// App.
		custom_domain_verification_id?: string
		id?:                            string

		// The FQDN of the Latest Revision of the Container App.
		latest_revision_fqdn?: string

		// The name of the latest Container Revision.
		latest_revision_name?:   string
		location?:               string
		max_inactive_revisions?: number

		// The name for this Container App.
		name!: string
		outbound_ip_addresses?: [...string]
		dapr?: matchN(1, [#dapr, list.MaxItems(1) & [...#dapr]])
		resource_group_name!: string
		revision_mode!:       string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		ingress?: matchN(1, [#ingress, list.MaxItems(1) & [...#ingress]])
		registry?: matchN(1, [#registry, [...#registry]])
		secret?: matchN(1, [#secret, [...#secret]])
		tags?: [string]: string
		template?: matchN(1, [#template, list.MaxItems(1) & [_, ...] & [...#template]])
		timeouts?:              #timeouts
		workload_profile_name?: string
	})

	#dapr: close({
		// The Dapr Application Identifier.
		app_id!: string

		// The port which the application is listening on. This is the
		// same as the `ingress` port.
		app_port?: number

		// The protocol for the app. Possible values include `http` and
		// `grpc`. Defaults to `http`.
		app_protocol?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#ingress: close({
		// Should this ingress allow insecure connections?
		allow_insecure_connections?: bool

		// Client certificate mode for mTLS authentication. Ignore
		// indicates server drops client certificate on forwarding.
		// Accept indicates server forwards client certificate but does
		// not require a client certificate. Require indicates server
		// requires a client certificate.
		client_certificate_mode?: string

		// The exposed port on the container for the Ingress traffic.
		exposed_port?: number
		custom_domain?: [...close({
			certificate_binding_type?: string
			certificate_id?:           string
			name?:                     string
		})]

		// Is this an external Ingress.
		external_enabled?: bool

		// The FQDN of the ingress.
		fqdn?: string

		// The target port on the container for the Ingress traffic.
		target_port!: number
		cors?: matchN(1, [_#defs."/$defs/ingress/$defs/cors", list.MaxItems(1) & [..._#defs."/$defs/ingress/$defs/cors"]])
		ip_security_restriction?: matchN(1, [_#defs."/$defs/ingress/$defs/ip_security_restriction", [..._#defs."/$defs/ingress/$defs/ip_security_restriction"]])
		traffic_weight?: matchN(1, [_#defs."/$defs/ingress/$defs/traffic_weight", [_, ...] & [..._#defs."/$defs/ingress/$defs/traffic_weight"]])

		// The transport method for the Ingress. Possible values include
		// `auto`, `http`, and `http2`, `tcp`. Defaults to `auto`
		transport?: string
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
		// The maximum number of replicas for this container.
		max_replicas?: number

		// The minimum number of replicas for this container.
		min_replicas?: number

		// The suffix for the revision. This value must be unique for the
		// lifetime of the Resource. If omitted the service will use a
		// hash function to create one.
		revision_suffix?: string

		// The time in seconds after the container is sent the termination
		// signal before the process if forcibly killed.
		termination_grace_period_seconds?: number
		azure_queue_scale_rule?: matchN(1, [_#defs."/$defs/template/$defs/azure_queue_scale_rule", [..._#defs."/$defs/template/$defs/azure_queue_scale_rule"]])
		container?: matchN(1, [_#defs."/$defs/template/$defs/container", [_, ...] & [..._#defs."/$defs/template/$defs/container"]])
		custom_scale_rule?: matchN(1, [_#defs."/$defs/template/$defs/custom_scale_rule", [..._#defs."/$defs/template/$defs/custom_scale_rule"]])
		http_scale_rule?: matchN(1, [_#defs."/$defs/template/$defs/http_scale_rule", [..._#defs."/$defs/template/$defs/http_scale_rule"]])
		init_container?: matchN(1, [_#defs."/$defs/template/$defs/init_container", [..._#defs."/$defs/template/$defs/init_container"]])
		tcp_scale_rule?: matchN(1, [_#defs."/$defs/template/$defs/tcp_scale_rule", [..._#defs."/$defs/template/$defs/tcp_scale_rule"]])
		volume?: matchN(1, [_#defs."/$defs/template/$defs/volume", [..._#defs."/$defs/template/$defs/volume"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/ingress/$defs/cors": close({
		allow_credentials_enabled?: bool
		allowed_headers?: [...string]
		allowed_methods?: [...string]
		allowed_origins!: [...string]
		exposed_headers?: [...string]
		max_age_in_seconds?: number
	})

	_#defs: "/$defs/ingress/$defs/ip_security_restriction": close({
		// The action. Allow or Deny.
		action!: string

		// Describe the IP restriction rule that is being sent to the
		// container-app.
		description?: string

		// The incoming IP address or range of IP addresses (in CIDR
		// notation).
		ip_address_range!: string

		// Name for the IP restriction rule.
		name!: string
	})

	_#defs: "/$defs/ingress/$defs/traffic_weight": close({
		// The label to apply to the revision as a name prefix for routing
		// traffic.
		label?: string

		// This traffic Weight relates to the latest stable Container
		// Revision.
		latest_revision?: bool

		// The percentage of traffic to send to this revision.
		percentage!: number

		// The suffix string to append to the revision. This must be
		// unique for the Container App's lifetime. A default hash
		// created by the service will be used if this value is omitted.
		revision_suffix?: string
	})

	_#defs: "/$defs/template/$defs/azure_queue_scale_rule": close({
		authentication?: matchN(1, [_#defs."/$defs/template/$defs/azure_queue_scale_rule/$defs/authentication", [_, ...] & [..._#defs."/$defs/template/$defs/azure_queue_scale_rule/$defs/authentication"]])
		name!:         string
		queue_length!: number
		queue_name!:   string
	})

	_#defs: "/$defs/template/$defs/azure_queue_scale_rule/$defs/authentication": close({
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

		// The amount of vCPU to allocate to the container. Possible
		// values include `0.25`, `0.5`, `0.75`, `1.0`, `1.25`, `1.5`,
		// `1.75`, and `2.0`. **NOTE:** `cpu` and `memory` must be
		// specified in `0.25'/'0.5Gi` combination increments. e.g. `1.0`
		// / `2.0` or `0.5` / `1.0`. When there's a workload profile
		// specified, there's no such constraint.
		cpu!: number

		// The amount of ephemeral storage available to the Container App.
		ephemeral_storage?: string

		// The image to use to create the container.
		image!: string

		// The amount of memory to allocate to the container. Possible
		// values include `0.5Gi`, `1.0Gi`, `1.5Gi`, `2.0Gi`, `2.5Gi`,
		// `3.0Gi`, `3.5Gi`, and `4.0Gi`. **NOTE:** `cpu` and `memory`
		// must be specified in `0.25'/'0.5Gi` combination increments.
		// e.g. `1.25` / `2.5Gi` or `0.75` / `1.5Gi`. When there's a
		// workload profile specified, there's no such constraint.
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

	_#defs: "/$defs/template/$defs/custom_scale_rule": close({
		authentication?: matchN(1, [_#defs."/$defs/template/$defs/custom_scale_rule/$defs/authentication", [..._#defs."/$defs/template/$defs/custom_scale_rule/$defs/authentication"]])
		custom_rule_type!: string
		metadata!: [string]: string
		name!: string
	})

	_#defs: "/$defs/template/$defs/custom_scale_rule/$defs/authentication": close({
		secret_name!:       string
		trigger_parameter!: string
	})

	_#defs: "/$defs/template/$defs/http_scale_rule": close({
		authentication?: matchN(1, [_#defs."/$defs/template/$defs/http_scale_rule/$defs/authentication", [..._#defs."/$defs/template/$defs/http_scale_rule/$defs/authentication"]])
		concurrent_requests!: string
		name!:                string
	})

	_#defs: "/$defs/template/$defs/http_scale_rule/$defs/authentication": close({
		secret_name!:       string
		trigger_parameter?: string
	})

	_#defs: "/$defs/template/$defs/init_container": close({
		// A list of args to pass to the container.
		args?: [...string]

		// A command to pass to the container to override the default.
		// This is provided as a list of command line elements without
		// spaces.
		command?: [...string]

		// The amount of vCPU to allocate to the container. Possible
		// values include `0.25`, `0.5`, `0.75`, `1.0`, `1.25`, `1.5`,
		// `1.75`, and `2.0`. **NOTE:** `cpu` and `memory` must be
		// specified in `0.25'/'0.5Gi` combination increments. e.g. `1.0`
		// / `2.0` or `0.5` / `1.0`. When there's a workload profile
		// specified, there's no such constraint.
		cpu?: number

		// The amount of ephemeral storage available to the Container App.
		ephemeral_storage?: string

		// The image to use to create the container.
		image!: string
		env?: matchN(1, [_#defs."/$defs/template/$defs/init_container/$defs/env", [..._#defs."/$defs/template/$defs/init_container/$defs/env"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/template/$defs/init_container/$defs/volume_mounts", [..._#defs."/$defs/template/$defs/init_container/$defs/volume_mounts"]])

		// The amount of memory to allocate to the container. Possible
		// values include `0.5Gi`, `1.0Gi`, `1.5Gi`, `2.0Gi`, `2.5Gi`,
		// `3.0Gi`, `3.5Gi`, and `4.0Gi`. **NOTE:** `cpu` and `memory`
		// must be specified in `0.25'/'0.5Gi` combination increments.
		// e.g. `1.25` / `2.5Gi` or `0.75` / `1.5Gi`. When there's a
		// workload profile specified, there's no such constraint.
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

	_#defs: "/$defs/template/$defs/tcp_scale_rule": close({
		authentication?: matchN(1, [_#defs."/$defs/template/$defs/tcp_scale_rule/$defs/authentication", [..._#defs."/$defs/template/$defs/tcp_scale_rule/$defs/authentication"]])
		concurrent_requests!: string
		name!:                string
	})

	_#defs: "/$defs/template/$defs/tcp_scale_rule/$defs/authentication": close({
		secret_name!:       string
		trigger_parameter?: string
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
