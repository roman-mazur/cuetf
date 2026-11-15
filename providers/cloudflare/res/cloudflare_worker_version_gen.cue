package res

cloudflare_worker_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_worker_version")
	close({
		// Identifier.
		account_id!: string

		// Metadata about the version.
		annotations?: close({
			// Human-readable message about the version. Truncated to 1000 bytes if longer.
			workers_message?: string

			// User-provided identifier for the version. Maximum 100 bytes.
			workers_tag?: string

			// Operation that triggered the creation of the version.
			workers_triggered_by?: string
		})

		// Email of the user who created the version.
		author_email?: string

		// Configuration for assets within a Worker.
		//
		// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers) and
		// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/)
		// files should be
		// included as modules named `_headers` and `_redirects` with content type `text/plain`.
		assets?: close({
			// The SHA-256 hash of the asset manifest of files to upload.
			asset_manifest_sha256?: string

			// Configuration for assets within a Worker.
			config?: close({
				// The public URL path prefix under which assets are served. A null request
				// value resets it to `/`; responses represent the root as `/`. All versions in
				// a gradual deployment must use the same canonical value. To change it, first
				// deploy the version containing the change at 100%.
				base_path?: string

				// Determines the redirects and rewrites of requests for HTML content.
				// Available values: "auto-trailing-slash", "force-trailing-slash", "drop-trailing-slash", "none".
				html_handling?: string

				// Determines the response when a request does not match a static asset, and
				// there is no Worker script.
				// Available values: "none", "404-page", "single-page-application".
				not_found_handling?: string

				// When a boolean true, requests will always invoke the Worker script.
				// Otherwise, attempt to serve an asset matching the request, falling back to
				// the Worker script. When a list of strings, contains path rules to control
				// routing to either the Worker or assets. Glob (*) and negative (!) rules are
				// supported. Rules must start with either '/' or '!/'. At least one
				// non-negative rule must be provided, and negative rules have higher
				// precedence than non-negative rules.
				run_worker_first?: _
			})

			// Path to the directory containing asset files to upload.
			directory?: string

			// Token provided upon successful upload of all files from a registered manifest.
			jwt?: string
		})

		// Identifier of the user who created the version.
		author_id?: string

		// List of bindings attached to a Worker. You can find more about bindings on
		// our docs:
		// https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
		bindings?: matchN(1, [close({
			// For `type: secret_key`: Algorithm-specific key parameters. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
			algorithm?: string

			// For `type: dispatch_namespace`: Outbound worker.
			outbound?: close({
				// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
				params?: matchN(1, [close({
					// Name of the parameter.
					name!: string
				}), [...close({
					// Name of the parameter.
					name!: string
				})]])

				// Outbound worker.
				worker?: close({
					// Entrypoint to invoke on the outbound worker.
					entrypoint?: string

					// Environment of the outbound worker.
					environment?: string

					// Name of the outbound worker.
					service?: string
				})
			})

			// For `type: send_email`: List of allowed destination addresses.
			allowed_destination_addresses?: [...string]

			// For `type: ratelimit`: The rate limit configuration.
			simple?: close({
				// The limit (requests per period).
				limit!: number

				// Duration in seconds to apply the mitigation action after the rate limit is
				// exceeded. Valid values are 0 (disabled), 10, or multiples of 60 up to 86400.
				// Must be greater than or equal to the period when non-zero.
				mitigation_timeout?: number

				// The period in seconds.
				period!: number
			})

			// For `type: send_email`: List of allowed sender addresses.
			allowed_sender_addresses?: [...string]

			// For `type: flagship`: ID of the Flagship app to bind to for feature flag evaluation.
			app_id?: string

			// For `type: r2_bucket`: R2 bucket to bind to.
			bucket_name?: string

			// For `type: mtls_certificate`: Identifier of the certificate to bind to.
			certificate_id?: string

			// For `type: durable_object_namespace`: The exported class name of the Durable Object.
			//
			// For `type: workflow`: Class name of the Workflow. Should only be provided if
			// the Workflow belongs to this script.
			class_name?: string

			// For `type: d1`: Identifier of the D1 database to bind to.
			database_id?: string

			// For `type: analytics_engine`: The name of the dataset to bind to.
			dataset?: string

			// For `type: send_email`: Destination address for the email.
			destination_address?: string

			// For `type: durable_object_namespace`: The dispatch namespace the Durable
			// Object script belongs to.
			dispatch_namespace?: string

			// For `type: service`: Entrypoint to invoke on the target Worker.
			entrypoint?: string

			// For `type: durable_object_namespace`: The environment of the script_name to bind to.
			//
			// For `type: service`: Optional environment if the Worker utilizes one.
			environment?: string

			// For `type: secret_key`: Data format of the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
			// Available values: "raw", "pkcs8", "spki", "jwk".
			format?: string

			// For `type: d1`: Identifier of the D1 database to bind to.
			//
			// For `type: hyperdrive`: Identifier of the Hyperdrive connection to bind to.
			id?: string

			// For `type: vpc_network`: Enables Gateway identity for the binding. Requires
			// network_id to be "cf1:network" and cannot be combined with tunnel_id or an
			// explicit "cf1:vnet:<UUID>" network_id.
			// Available values: "runtime-email-alpha".
			identity?: string

			// For `type: vectorize`: Name of the Vectorize index to bind to.
			index_name?: string

			// For `type: ai_search`: The user-chosen instance name. Must exist at deploy
			// time. The worker can search, chat, update, and manage items/jobs on this
			// instance.
			instance_name?: string

			// For `type: json`: JSON data to use.
			json?: string

			// For `type: r2_bucket`: The
			// [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions)
			// of the R2 bucket.
			// Available values: "eu", "fedramp", "fedramp-high", "us".
			jurisdiction?: string

			// For `type: secret_key`: Base64-encoded key data. Required if `format` is
			// "raw", "pkcs8", or "spki".
			key_base64?: string

			// For `type: secret_key`: Key data in [JSON Web
			// Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key)
			// format. Required if `format` is "jwk".
			key_jwk?: string

			// For `type: ai` or `type: ai_search` or `type: ai_search_namespace` or `type:
			// messaging` or `type: analytics_engine` or `type: artifacts` or `type:
			// assets` or `type: browser` or `type: d1` or `type: data_blob` or `type:
			// dispatch_namespace` or `type: durable_object_namespace` or `type:
			// hyperdrive` or `type: images` or `type: json` or `type: kv_namespace` or
			// `type: media` or `type: mtls_certificate` or `type: plain_text` or `type:
			// pipelines` or `type: k2` or `type: queue` or `type: ratelimit` or `type:
			// r2_bucket` or `type: secret_text` or `type: send_email` or `type: service`
			// or `type: text_blob` or `type: vectorize` or `type: version_metadata` or
			// `type: secrets_store_secret` or `type: flagship` or `type: secret_key` or
			// `type: workflow` or `type: wasm_module` or `type: vpc_service` or `type:
			// vpc_network` or `type: worker_loader`: A JavaScript variable name for the
			// binding.
			//
			// For `type: inherit`: The name of the inherited binding.
			name!: string

			// For `type: ai_search`: The namespace the instance belongs to. Defaults to
			// "default" if omitted. Customers who don't use namespaces can simply omit
			// this field.
			//
			// For `type: ai_search_namespace`: The user-chosen namespace name. Must exist
			// before deploy -- Wrangler handles auto-creation on deploy failure (R2 bucket
			// pattern). The "default" namespace is auto-created by config-api for new
			// accounts. Grants full access (CRUD + search + chat) to all instances within
			// the namespace.
			//
			// For `type: messaging`: The Messaging namespace to bind to.
			//
			// For `type: artifacts`: The Artifacts namespace exposed to the Worker in the
			// Worker's account. Must be 2-63 characters, start with an ASCII alphanumeric
			// character, contain only ASCII alphanumeric characters, dots, underscores,
			// and hyphens, and must not end with a hyphen. The namespace does not need to
			// be created before binding it.
			//
			// For `type: dispatch_namespace`: The name of the dispatch namespace.
			namespace?: string

			// For `type: durable_object_namespace` or `type: kv_namespace`: Namespace identifier tag.
			//
			// For `type: ratelimit`: Identifier of the rate limit namespace to bind to.
			namespace_id?: string

			// For `type: vpc_network`: Identifier of the network to bind to. Use
			// "cf1:network" to select the account's default virtual network at runtime, or
			// "cf1:vnet:<UUID>" to select an explicit virtual network in the Worker's
			// account. Mutually exclusive with tunnel_id.
			network_id?: string

			// For `type: inherit`: The old name of the inherited binding. If set, the
			// binding will be renamed from `old_name` to `name` in the new version. If not
			// set, the binding will keep the same name between versions.
			old_name?: string

			// For `type: data_blob`: The name of the file containing the data content. Only
			// accepted for `service worker syntax` Workers.
			//
			// For `type: text_blob`: The name of the file containing the text content. Only
			// accepted for `service worker syntax` Workers.
			//
			// For `type: wasm_module`: The name of the file containing the WebAssembly
			// module content. Only accepted for `service worker syntax` Workers.
			part?: string

			// For `type: pipelines`: Name of the Pipeline to bind to.
			pipeline?: string

			// For `type: queue`: Name of the Queue to bind to.
			queue_name?: string

			// For `type: durable_object_namespace`: The script where the Durable Object is
			// defined, if it is external to this Worker.
			//
			// For `type: workflow`: Script name that contains the Workflow. If not
			// provided, defaults to this script name.
			script_name?: string

			// For `type: secrets_store_secret`: Name of the secret in the store.
			secret_name?: string

			// For `type: service`: Name of Worker to bind to.
			service?: string

			// For `type: vpc_service`: Identifier of the VPC service to bind to.
			service_id?: string

			// For `type: secrets_store_secret`: ID of the store containing the secret.
			store_id?: string

			// For `type: k2`: ID of a K2 stream owned by the account deploying the Worker.
			stream?: string

			// For `type: plain_text`: The text value to use.
			//
			// For `type: secret_text`: The secret value to use.
			text?: string

			// For `type: vpc_network`: UUID of the Cloudflare Tunnel to bind to. Mutually
			// exclusive with network_id.
			tunnel_id?: string

			// The kind of resource that the binding provides.
			// Available values: "ai", "ai_search", "ai_search_namespace", "messaging",
			// "analytics_engine", "artifacts", "assets", "browser", "d1", "data_blob",
			// "dispatch_namespace", "durable_object_namespace", "hyperdrive", "inherit",
			// "images", "json", "kv_namespace", "media", "mtls_certificate", "plain_text",
			// "pipelines", "k2", "queue", "ratelimit", "r2_bucket", "secret_text",
			// "send_email", "service", "text_blob", "vectorize", "version_metadata",
			// "secrets_store_secret", "flagship", "secret_key", "workflow", "wasm_module",
			// "vpc_service", "vpc_network", "worker_loader".
			type!: string

			// For `type: secret_key`: Allowed operations with the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
			usages?: [...string]

			// For `type: inherit`: Identifier for the version to inherit the binding from.
			// This can be a version ID, or the literal "latest" to inherit from the most
			// recently uploaded version, which may not be the deployed version. Defaults
			// to "latest". Only the Workers API version endpoints under
			// `/accounts/{account_id}/workers/workers/{worker_id}/versions` accept a
			// version ID. Other endpoints, including script upload and script version
			// upload, accept only "latest" and reject a version ID with error 10057.
			version_id?: string

			// For `type: workflow`: Name of the Workflow to bind to.
			workflow_name?: string
		}), [...close({
			// For `type: secret_key`: Algorithm-specific key parameters. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
			algorithm?: string

			// For `type: dispatch_namespace`: Outbound worker.
			outbound?: close({
				// Pass information from the Dispatch Worker to the Outbound Worker through the parameters.
				params?: matchN(1, [close({
					// Name of the parameter.
					name!: string
				}), [...close({
					// Name of the parameter.
					name!: string
				})]])

				// Outbound worker.
				worker?: close({
					// Entrypoint to invoke on the outbound worker.
					entrypoint?: string

					// Environment of the outbound worker.
					environment?: string

					// Name of the outbound worker.
					service?: string
				})
			})

			// For `type: send_email`: List of allowed destination addresses.
			allowed_destination_addresses?: [...string]

			// For `type: ratelimit`: The rate limit configuration.
			simple?: close({
				// The limit (requests per period).
				limit!: number

				// Duration in seconds to apply the mitigation action after the rate limit is
				// exceeded. Valid values are 0 (disabled), 10, or multiples of 60 up to 86400.
				// Must be greater than or equal to the period when non-zero.
				mitigation_timeout?: number

				// The period in seconds.
				period!: number
			})

			// For `type: send_email`: List of allowed sender addresses.
			allowed_sender_addresses?: [...string]

			// For `type: flagship`: ID of the Flagship app to bind to for feature flag evaluation.
			app_id?: string

			// For `type: r2_bucket`: R2 bucket to bind to.
			bucket_name?: string

			// For `type: mtls_certificate`: Identifier of the certificate to bind to.
			certificate_id?: string

			// For `type: durable_object_namespace`: The exported class name of the Durable Object.
			//
			// For `type: workflow`: Class name of the Workflow. Should only be provided if
			// the Workflow belongs to this script.
			class_name?: string

			// For `type: d1`: Identifier of the D1 database to bind to.
			database_id?: string

			// For `type: analytics_engine`: The name of the dataset to bind to.
			dataset?: string

			// For `type: send_email`: Destination address for the email.
			destination_address?: string

			// For `type: durable_object_namespace`: The dispatch namespace the Durable
			// Object script belongs to.
			dispatch_namespace?: string

			// For `type: service`: Entrypoint to invoke on the target Worker.
			entrypoint?: string

			// For `type: durable_object_namespace`: The environment of the script_name to bind to.
			//
			// For `type: service`: Optional environment if the Worker utilizes one.
			environment?: string

			// For `type: secret_key`: Data format of the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
			// Available values: "raw", "pkcs8", "spki", "jwk".
			format?: string

			// For `type: d1`: Identifier of the D1 database to bind to.
			//
			// For `type: hyperdrive`: Identifier of the Hyperdrive connection to bind to.
			id?: string

			// For `type: vpc_network`: Enables Gateway identity for the binding. Requires
			// network_id to be "cf1:network" and cannot be combined with tunnel_id or an
			// explicit "cf1:vnet:<UUID>" network_id.
			// Available values: "runtime-email-alpha".
			identity?: string

			// For `type: vectorize`: Name of the Vectorize index to bind to.
			index_name?: string

			// For `type: ai_search`: The user-chosen instance name. Must exist at deploy
			// time. The worker can search, chat, update, and manage items/jobs on this
			// instance.
			instance_name?: string

			// For `type: json`: JSON data to use.
			json?: string

			// For `type: r2_bucket`: The
			// [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions)
			// of the R2 bucket.
			// Available values: "eu", "fedramp", "fedramp-high", "us".
			jurisdiction?: string

			// For `type: secret_key`: Base64-encoded key data. Required if `format` is
			// "raw", "pkcs8", or "spki".
			key_base64?: string

			// For `type: secret_key`: Key data in [JSON Web
			// Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key)
			// format. Required if `format` is "jwk".
			key_jwk?: string

			// For `type: ai` or `type: ai_search` or `type: ai_search_namespace` or `type:
			// messaging` or `type: analytics_engine` or `type: artifacts` or `type:
			// assets` or `type: browser` or `type: d1` or `type: data_blob` or `type:
			// dispatch_namespace` or `type: durable_object_namespace` or `type:
			// hyperdrive` or `type: images` or `type: json` or `type: kv_namespace` or
			// `type: media` or `type: mtls_certificate` or `type: plain_text` or `type:
			// pipelines` or `type: k2` or `type: queue` or `type: ratelimit` or `type:
			// r2_bucket` or `type: secret_text` or `type: send_email` or `type: service`
			// or `type: text_blob` or `type: vectorize` or `type: version_metadata` or
			// `type: secrets_store_secret` or `type: flagship` or `type: secret_key` or
			// `type: workflow` or `type: wasm_module` or `type: vpc_service` or `type:
			// vpc_network` or `type: worker_loader`: A JavaScript variable name for the
			// binding.
			//
			// For `type: inherit`: The name of the inherited binding.
			name!: string

			// For `type: ai_search`: The namespace the instance belongs to. Defaults to
			// "default" if omitted. Customers who don't use namespaces can simply omit
			// this field.
			//
			// For `type: ai_search_namespace`: The user-chosen namespace name. Must exist
			// before deploy -- Wrangler handles auto-creation on deploy failure (R2 bucket
			// pattern). The "default" namespace is auto-created by config-api for new
			// accounts. Grants full access (CRUD + search + chat) to all instances within
			// the namespace.
			//
			// For `type: messaging`: The Messaging namespace to bind to.
			//
			// For `type: artifacts`: The Artifacts namespace exposed to the Worker in the
			// Worker's account. Must be 2-63 characters, start with an ASCII alphanumeric
			// character, contain only ASCII alphanumeric characters, dots, underscores,
			// and hyphens, and must not end with a hyphen. The namespace does not need to
			// be created before binding it.
			//
			// For `type: dispatch_namespace`: The name of the dispatch namespace.
			namespace?: string

			// For `type: durable_object_namespace` or `type: kv_namespace`: Namespace identifier tag.
			//
			// For `type: ratelimit`: Identifier of the rate limit namespace to bind to.
			namespace_id?: string

			// For `type: vpc_network`: Identifier of the network to bind to. Use
			// "cf1:network" to select the account's default virtual network at runtime, or
			// "cf1:vnet:<UUID>" to select an explicit virtual network in the Worker's
			// account. Mutually exclusive with tunnel_id.
			network_id?: string

			// For `type: inherit`: The old name of the inherited binding. If set, the
			// binding will be renamed from `old_name` to `name` in the new version. If not
			// set, the binding will keep the same name between versions.
			old_name?: string

			// For `type: data_blob`: The name of the file containing the data content. Only
			// accepted for `service worker syntax` Workers.
			//
			// For `type: text_blob`: The name of the file containing the text content. Only
			// accepted for `service worker syntax` Workers.
			//
			// For `type: wasm_module`: The name of the file containing the WebAssembly
			// module content. Only accepted for `service worker syntax` Workers.
			part?: string

			// For `type: pipelines`: Name of the Pipeline to bind to.
			pipeline?: string

			// For `type: queue`: Name of the Queue to bind to.
			queue_name?: string

			// For `type: durable_object_namespace`: The script where the Durable Object is
			// defined, if it is external to this Worker.
			//
			// For `type: workflow`: Script name that contains the Workflow. If not
			// provided, defaults to this script name.
			script_name?: string

			// For `type: secrets_store_secret`: Name of the secret in the store.
			secret_name?: string

			// For `type: service`: Name of Worker to bind to.
			service?: string

			// For `type: vpc_service`: Identifier of the VPC service to bind to.
			service_id?: string

			// For `type: secrets_store_secret`: ID of the store containing the secret.
			store_id?: string

			// For `type: k2`: ID of a K2 stream owned by the account deploying the Worker.
			stream?: string

			// For `type: plain_text`: The text value to use.
			//
			// For `type: secret_text`: The secret value to use.
			text?: string

			// For `type: vpc_network`: UUID of the Cloudflare Tunnel to bind to. Mutually
			// exclusive with network_id.
			tunnel_id?: string

			// The kind of resource that the binding provides.
			// Available values: "ai", "ai_search", "ai_search_namespace", "messaging",
			// "analytics_engine", "artifacts", "assets", "browser", "d1", "data_blob",
			// "dispatch_namespace", "durable_object_namespace", "hyperdrive", "inherit",
			// "images", "json", "kv_namespace", "media", "mtls_certificate", "plain_text",
			// "pipelines", "k2", "queue", "ratelimit", "r2_bucket", "secret_text",
			// "send_email", "service", "text_blob", "vectorize", "version_metadata",
			// "secrets_store_secret", "flagship", "secret_key", "workflow", "wasm_module",
			// "vpc_service", "vpc_network", "worker_loader".
			type!: string

			// For `type: secret_key`: Allowed operations with the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
			usages?: [...string]

			// For `type: inherit`: Identifier for the version to inherit the binding from.
			// This can be a version ID, or the literal "latest" to inherit from the most
			// recently uploaded version, which may not be the deployed version. Defaults
			// to "latest". Only the Workers API version endpoints under
			// `/accounts/{account_id}/workers/workers/{worker_id}/versions` accept a
			// version ID. Other endpoints, including script upload and script version
			// upload, accept only "latest" and reject a version ID with error 10057.
			version_id?: string

			// For `type: workflow`: Name of the Workflow to bind to.
			workflow_name?: string
		})]])

		// Date indicating targeted support in the Workers runtime. Backwards
		// incompatible fixes to the runtime following this date will not affect this
		// Worker.
		compatibility_date?: string

		// Global CacheW configuration for the Worker. When caching is on,
		// the platform provisions a `cloudflare.app` zone for the Worker.
		// A `type: worker` entry in the `exports` map can override this
		// value for a single entrypoint.
		cache_options?: close({
			// Whether cached responses are shared across Worker version
			// uploads. This is independent of `enabled`. It can stay true
			// while caching is off, so the preference survives turning
			// caching off and back on.
			cross_version_cache?: bool

			// Whether caching is enabled for this Worker.
			enabled?: bool
		})

		// Enables or disables specific Workers runtime features, such as upcoming
		// features or changes outside the `compatibility_date`.
		//
		// Responses list only the flags this version sets explicitly and exclude
		// behavior that `compatibility_date` enables. Responses omit the field when
		// the list is empty, so a missing field means the version sets zero flags.
		compatibility_flags?: [...string]

		// List of containers attached to a Worker. Containers can only be attached to
		// Durable Object classes of this Worker script.
		containers?: matchN(1, [close({
			// Select which Durable Object class should get this container attached.
			class_name!: string
		}), [...close({
			// Select which Durable Object class should get this container attached.
			class_name!: string
		})]])

		// When the version was created.
		created_on?: string

		// If true, a deployment will be created that sends 100% of traffic to the new version.
		deploy?: bool

		// Declarative exports for the version, including Durable Object
		// classes (with their `storage` backend) and named Worker
		// entrypoints. On reads, tombstoned lifecycle entries are
		// omitted, so only live exports (`created` and
		// `expecting-transfer`) are returned. `exports` and `migrations`
		// are mutually exclusive on upload.
		exports?: [string]: close({
			// For `type: worker`: Cache override for this entrypoint. Overrides the Worker's
			// global `cache_options.enabled` for this entrypoint only.
			cache?: close({
				// Whether caching is enabled for this entrypoint.
				enabled!: bool
			})

			// For `type: durable-object` and `state: created`: Name of the container (declared in the upload's
			// `metadata.containers`) that backs this Durable Object. When
			// set, the namespace is container-enabled. Valid only on live
			// entries.
			//
			// For `state: expecting-transfer`: Name of the container (declared in the upload's
			// `metadata.containers`) that backs this Durable Object once the
			// transfer settles. Valid only on live entries.
			container?: string

			// For `state: renamed`: The destination class name. Must differ from the source class
			// (the map key) and must be declared as a live (`created`) entry
			// in the same `exports` map. Write-only: never present in GET
			// responses.
			renamed_to?: string

			// For `state: created`: Live export. May be omitted; defaults to `created`.
			//
			// For `state: deleted`: Tombstone that deletes the namespace.
			//
			// For `state: renamed`: Tombstone that renames the namespace's class.
			//
			// For `state: transferred`: Tombstone that transfers the namespace to another script.
			//
			// For `state: expecting-transfer`: Target side of a two-phase transfer.
			// Available values: "created", "deleted", "renamed", "transferred", "expecting-transfer".
			state?: string

			// For `type: durable-object` and `state: created`: Durable Object storage
			// backend. `sqlite` is the recommended (and
			// only) backend for new namespaces. `legacy-kv` is accepted only for
			// a class whose namespace already exists as KV-backed; the `exports`
			// flow never provisions a new `legacy-kv` namespace.
			//
			// For `type: durable-object` and `state: expecting-transfer`: Durable Object
			// storage backend. `sqlite` is the recommended (and
			// only) backend for new namespaces. `legacy-kv` is accepted only for
			// a class whose namespace already exists as KV-backed; the `exports`
			// flow never provisions a new `legacy-kv` namespace.
			// Available values: "sqlite", "legacy-kv".
			storage?: string

			// For `state: expecting-transfer`: The source script name to receive the namespace from. Must be
			// in the same account and dispatch-namespace context. Present on
			// reads for `expecting-transfer` entries.
			transfer_from?: string

			// For `state: transferred`: The destination script name. Must be in the same account and
			// the same dispatch-namespace context (or both non-dispatch).
			// Cross-dispatch-namespace transfers are rejected. Write-only:
			// never present in GET responses.
			transferred_to?: string

			// For `type: worker`: Marks this entry as a Worker entrypoint export.
			//
			// For `type: durable-object`: Marks this entry as a Durable Object export.
			// Available values: "worker", "durable-object".
			type!: string
		})

		// Summary of the declarative exports reconciliation that ran on this upload.
		// Populated only when the uploaded metadata included an `exports` block.
		// Durable Object entries drive reconciliation; `type: worker` entries do not
		// contribute to this summary.
		exports_reconciliation?: close({
			// Class names for which a new namespace was provisioned.
			created?: [...string]

			// Non-blocking info entries (stale tombstones, tombstone applied with class
			// still in code). See `exports_reconciliation_info`.
			info?: matchN(1, [close({
				// The class name the info entry is about.
				class?: string

				// Human-readable explanation.
				message?: string

				// The provisioned namespace the entry relates to, when applicable.
				namespace_id?: string

				// Other Workers in the account that still bind to the affected class. Advisory:
				// while non-empty the tombstone is not yet safe to remove — redeploy these
				// Workers with bindings re-pointed first.
				referencing_scripts?: [...string]

				// Stable, machine-readable tag identifying which reconciliation scenario
				// produced an error, warning, or info entry. Clients may branch on this value
				// instead of parsing `message`.
				scenario?: string
			}), [...close({
				// The class name the info entry is about.
				class?: string

				// Human-readable explanation.
				message?: string

				// The provisioned namespace the entry relates to, when applicable.
				namespace_id?: string

				// Other Workers in the account that still bind to the affected class. Advisory:
				// while non-empty the tombstone is not yet safe to remove — redeploy these
				// Workers with bindings re-pointed first.
				referencing_scripts?: [...string]

				// Stable, machine-readable tag identifying which reconciliation scenario
				// produced an error, warning, or info entry. Clients may branch on this value
				// instead of parsing `message`.
				scenario?: string
			})]])

			// Class names whose namespace was deleted by a `deleted` tombstone.
			deleted?: [...string]

			// Applied `renamed` tombstones.
			renamed?: matchN(1, [close({
				// The original (source) class name.
				from?: string

				// The new class name (`renamed_to`).
				to?: string
			}), [...close({
				// The original (source) class name.
				from?: string

				// The new class name (`renamed_to`).
				to?: string
			})]])

			// Source class names whose tombstone entry is now stale and safe to delete from
			// `exports` (no remaining referencing scripts).
			removable_entries?: [...string]

			// Phase-1 transfer hints recorded on the target side.
			transfer_pending?: matchN(1, [close({
				// The target-side class name awaiting transfer.
				class?: string

				// The source script the namespace will be transferred from.
				from?: string
			}), [...close({
				// The target-side class name awaiting transfer.
				class?: string

				// The source script the namespace will be transferred from.
				from?: string
			})]])

			// Class names whose provisioned namespace was mutated in place.
			updated?: [...string]

			// Committed `transferred` tombstones (phase-2).
			transferred?: matchN(1, [close({
				// The source class name that was transferred.
				class?: string

				// The transfer phase. Currently always `committed`.
				phase?: string

				// The destination script that now owns the namespace.
				to?: string
			}), [...close({
				// The source class name that was transferred.
				class?: string

				// The transfer phase. Currently always `committed`.
				phase?: string

				// The destination script that now owns the namespace.
				to?: string
			})]])

			// Non-blocking warnings. See `exports_reconciliation_warning`.
			warnings?: matchN(1, [close({
				// The class name the warning is about.
				class?: string

				// Human-readable explanation of the warning.
				message?: string

				// The provisioned namespace the warning relates to, when applicable.
				namespace_id?: string

				// Stable, machine-readable tag identifying which reconciliation scenario
				// produced an error, warning, or info entry. Clients may branch on this value
				// instead of parsing `message`.
				scenario?: string
			}), [...close({
				// The class name the warning is about.
				class?: string

				// Human-readable explanation of the warning.
				message?: string

				// The provisioned namespace the warning relates to, when applicable.
				namespace_id?: string

				// Stable, machine-readable tag identifying which reconciliation scenario
				// produced an error, warning, or info entry. Clients may branch on this value
				// instead of parsing `message`.
				scenario?: string
			})]])
		})

		// Version identifier.
		id?: string

		// Optional properties to include in the response. `modules` includes the
		// `modules` property, which contains code and may add several megabytes to the
		// response size. `modules,sourcemaps` also includes the version's source maps
		// in `modules`.
		// Available values: "modules", "modules,sourcemaps".
		include?: string

		// Resource limits enforced at runtime.
		limits?: close({
			// CPU time limit in milliseconds.
			cpu_ms?: number

			// Subrequest limit per request.
			subrequests?: number
		})

		// The name of the main module in the `modules` array (e.g. the name of the
		// module that exports a `fetch` handler).
		main_module?: string

		// The base64-encoded main script content. This is only returned for service
		// worker syntax workers (not ES modules). Used when importing existing workers
		// that use the older service worker syntax.
		main_script_base64?: string

		// Durable Object migration tag. Set when the version is deployed. Omitted if
		// the version has not been deployed or the Worker does not use Durable
		// Objects.
		migration_tag?: string

		// Migrations for Durable Objects associated with the version. Migrations are
		// applied when the version is deployed.
		migrations?: close({
			// A list of classes to delete Durable Object namespaces from.
			deleted_classes?: [...string]

			// A list of classes with Durable Object namespaces that were renamed.
			renamed_classes?: matchN(1, [close({
				from?: string
				to?:   string
			}), [...close({
				from?: string
				to?:   string
			})]])

			// A list of classes to create Durable Object namespaces from.
			new_classes?: [...string]

			// Migrations to apply in order.
			steps?: matchN(1, [close({
				// A list of classes to delete Durable Object namespaces from.
				deleted_classes?: [...string]

				// A list of classes with Durable Object namespaces that were renamed.
				renamed_classes?: matchN(1, [close({
					from?: string
					to?:   string
				}), [...close({
					from?: string
					to?:   string
				})]])

				// A list of classes to create Durable Object namespaces from.
				new_classes?: [...string]

				// A list of transfers for Durable Object namespaces from a different Worker and
				// class to a class defined in this Worker.
				transferred_classes?: matchN(1, [close({
					from?:        string
					from_script?: string
					to?:          string
				}), [...close({
					from?:        string
					from_script?: string
					to?:          string
				})]])

				// A list of classes to create Durable Object namespaces with SQLite from.
				new_sqlite_classes?: [...string]
			}), [...close({
				// A list of classes to delete Durable Object namespaces from.
				deleted_classes?: [...string]

				// A list of classes with Durable Object namespaces that were renamed.
				renamed_classes?: matchN(1, [close({
					from?: string
					to?:   string
				}), [...close({
					from?: string
					to?:   string
				})]])

				// A list of classes to create Durable Object namespaces from.
				new_classes?: [...string]

				// A list of transfers for Durable Object namespaces from a different Worker and
				// class to a class defined in this Worker.
				transferred_classes?: matchN(1, [close({
					from?:        string
					from_script?: string
					to?:          string
				}), [...close({
					from?:        string
					from_script?: string
					to?:          string
				})]])

				// A list of classes to create Durable Object namespaces with SQLite from.
				new_sqlite_classes?: [...string]
			})]])

			// A list of classes to create Durable Object namespaces with SQLite from.
			new_sqlite_classes?: [...string]

			// A list of transfers for Durable Object namespaces from a different Worker and
			// class to a class defined in this Worker.
			transferred_classes?: matchN(1, [close({
				from?:        string
				from_script?: string
				to?:          string
			}), [...close({
				from?:        string
				from_script?: string
				to?:          string
			})]])

			// Tag to set as the latest migration tag.
			new_tag?: string

			// Tag used to verify against the latest migration tag for this Worker. If they
			// don't match, the upload is rejected.
			old_tag?: string
		})

		// Code, sourcemaps, and other content used at runtime.
		//
		// Source maps use content type `application/source-map`. Responses include them
		// only when requested with
		// `include=modules,sourcemaps`. Workers stores the source map fields used to
		// remap stack traces, so a returned
		// source map is equivalent to the uploaded file but not byte-identical.
		//
		// This includes
		// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers)
		// and
		// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/)
		// files used to configure
		// [Static Assets](https://developers.cloudflare.com/workers/static-assets/).
		// `_headers` and `_redirects` files should be
		// included as modules named `_headers` and `_redirects` with content type `text/plain`.
		modules?: matchN(1, [close({
			// The base64-encoded module content.
			content_base64?: string

			// The file path of the module content.
			content_file?: string

			// The SHA-256 hash of the module content.
			content_sha256?: string

			// The content type of the module.
			content_type!: string

			// The name of the module.
			name!: string
		}), [...close({
			// The base64-encoded module content.
			content_base64?: string

			// The file path of the module content.
			content_file?: string

			// The SHA-256 hash of the module content.
			content_sha256?: string

			// The content type of the module.
			content_type!: string

			// The name of the module.
			name!: string
		})]])

		// The integer version number, starting from one.
		"number"?: number

		// The list of npm packages that were installed and used when this Worker
		// version was built.
		package_dependencies?: matchN(1, [close({
			// The exact version that was resolved and installed by the package manager.
			installed_version!: string

			// The npm package name.
			name!: string

			// The version constraint as written in package.json.
			package_json_version!: string
		}), [...close({
			// The exact version that was resolved and installed by the package manager.
			installed_version!: string

			// The npm package name.
			name!: string

			// The version constraint as written in package.json.
			package_json_version!: string
		})]])

		// Configuration for [Smart
		// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
		// Specify mode='smart' for Smart Placement, or one of region/hostname/host.
		placement?: close({
			// TCP host and port for targeted placement.
			host?: string

			// Array of placement targets (currently limited to single target).
			target?: matchN(1, [close({
				// TCP host:port for targeted placement.
				host?: string

				// HTTP hostname for targeted placement.
				hostname?: string

				// Cloud region in format 'provider:region'.
				region?: string
			}), [...close({
				// TCP host:port for targeted placement.
				host?: string

				// HTTP hostname for targeted placement.
				hostname?: string

				// Cloud region in format 'provider:region'.
				region?: string
			})]])

			// HTTP hostname for targeted placement.
			hostname?: string

			// Enables [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			//
			// Targeted placement mode.
			// Available values: "smart", "targeted".
			mode?: string

			// Cloud region for targeted placement in format 'provider:region'.
			region?: string
		})

		// The client used to create the version.
		source?: string

		// Time in milliseconds spent on [Worker
		// startup](https://developers.cloudflare.com/workers/platform/limits/#worker-startup-time).
		startup_time_ms?: number

		// All routable URLs that always point to this version. Does not include alias
		// URLs, since aliases can be updated to point to a different version.
		urls?: [...string]

		// Identifier for the Worker, which can be ID or name.
		worker_id!: string
	})
}
