package res

#cloudflare_workers_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_workers_script")
	close({
		// Identifier.
		account_id!: string

		// Configuration for assets within a Worker.
		assets?: close({
			// The SHA-256 hash of the asset manifest of files to upload.
			asset_manifest_sha256?: string

			// Path to the directory containing asset files to upload.
			directory?: string

			// Token provided upon successful upload of all files from a
			// registered manifest.
			jwt?: string

			// Configuration for assets within a Worker.
			config?: close({
				// The contents of a _headers file (used to attach custom headers
				// on asset responses).
				headers?: string

				// Determines the redirects and rewrites of requests for HTML
				// content.
				// Available values: "auto-trailing-slash",
				// "force-trailing-slash", "drop-trailing-slash", "none".
				html_handling?: string

				// Determines the response when a request does not match a static
				// asset, and there is no Worker script.
				// Available values: "none", "404-page",
				// "single-page-application".
				not_found_handling?: string

				// The contents of a _redirects file (used to apply redirects or
				// proxy paths ahead of asset serving).
				redirects?: string

				// When a boolean true, requests will always invoke the Worker
				// script. Otherwise, attempt to serve an asset matching the
				// request, falling back to the Worker script. When a list of
				// strings, contains path rules to control routing to either the
				// Worker or assets. Glob (*) and negative (!) rules are
				// supported. Rules must start with either '/' or '!/'. At least
				// one non-negative rule must be provided, and negative rules
				// have higher precedence than non-negative rules.
				run_worker_first?: _
			})
		})

		// Name of the uploaded file that contains the script (e.g. the
		// file adding a listener to the `fetch` event). Indicates a
		// `service worker syntax` Worker.
		body_part?: string

		// List of bindings attached to a Worker. You can find more about
		// bindings on our docs:
		// https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
		bindings?: matchN(1, [close({
			// Algorithm-specific key parameters. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
			algorithm?: string

			// List of allowed destination addresses.
			allowed_destination_addresses?: [...string]

			// List of allowed sender addresses.
			allowed_sender_addresses?: [...string]

			// R2 bucket to bind to.
			bucket_name?: string

			// Identifier of the certificate to bind to.
			certificate_id?: string

			// The exported class name of the Durable Object.
			class_name?: string

			// The name of the dataset to bind to.
			dataset?: string

			// Destination address for the email.
			destination_address?: string

			// The environment of the script_name to bind to.
			environment?: string

			// Data format of the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
			// Available values: "raw", "pkcs8", "spki", "jwk".
			format?: string

			// Identifier of the D1 database to bind to.
			id?: string

			// Name of the Vectorize index to bind to.
			index_name?: string

			// JSON data to use.
			json?: string

			// The
			// [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions)
			// of the R2 bucket.
			// Available values: "eu", "fedramp".
			jurisdiction?: string

			// Base64-encoded key data. Required if `format` is "raw",
			// "pkcs8", or "spki".
			key_base64?: string

			// Outbound worker.
			outbound?: close({
				// Pass information from the Dispatch Worker to the Outbound
				// Worker through the parameters.
				params?: [...string]

				// Outbound worker.
				worker?: close({
					// Environment of the outbound worker.
					environment?: string

					// Name of the outbound worker.
					service?: string
				})
			})

			// Key data in [JSON Web
			// Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key)
			// format. Required if `format` is "jwk".
			key_jwk?: string

			// A JavaScript variable name for the binding.
			name!: string

			// The name of the dispatch namespace.
			namespace?: string

			// Namespace identifier tag.
			namespace_id?: string

			// The old name of the inherited binding. If set, the binding will
			// be renamed from `old_name` to `name` in the new version. If
			// not set, the binding will keep the same name between versions.
			old_name?: string

			// The name of the file containing the data content. Only accepted
			// for `service worker syntax` Workers.
			part?: string

			// Name of the Pipeline to bind to.
			pipeline?: string

			// Name of the Queue to bind to.
			queue_name?: string

			// The script where the Durable Object is defined, if it is
			// external to this Worker.
			script_name?: string

			// Name of the secret in the store.
			secret_name?: string

			// Name of Worker to bind to.
			service?: string

			// ID of the store containing the secret.
			store_id?: string

			// The text value to use.
			text?: string

			// The kind of resource that the binding provides.
			// Available values: "ai", "analytics_engine", "assets",
			// "browser", "d1", "data_blob", "dispatch_namespace",
			// "durable_object_namespace", "hyperdrive", "inherit", "images",
			// "json", "kv_namespace", "mtls_certificate", "plain_text",
			// "pipelines", "queue", "r2_bucket", "secret_text",
			// "send_email", "service", "tail_consumer", "text_blob",
			// "vectorize", "version_metadata", "secrets_store_secret",
			// "secret_key", "workflow", "wasm_module".
			type!: string

			// Allowed operations with the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
			usages?: [...string]

			// Identifier for the version to inherit the binding from, which
			// can be the version ID or the literal "latest" to inherit from
			// the latest version. Defaults to inheriting the binding from
			// the latest version.
			version_id?: string

			// Name of the Workflow to bind to.
			workflow_name?: string
		}), [...close({
			// Algorithm-specific key parameters. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
			algorithm?: string

			// List of allowed destination addresses.
			allowed_destination_addresses?: [...string]

			// List of allowed sender addresses.
			allowed_sender_addresses?: [...string]

			// R2 bucket to bind to.
			bucket_name?: string

			// Identifier of the certificate to bind to.
			certificate_id?: string

			// The exported class name of the Durable Object.
			class_name?: string

			// The name of the dataset to bind to.
			dataset?: string

			// Destination address for the email.
			destination_address?: string

			// The environment of the script_name to bind to.
			environment?: string

			// Data format of the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
			// Available values: "raw", "pkcs8", "spki", "jwk".
			format?: string

			// Identifier of the D1 database to bind to.
			id?: string

			// Name of the Vectorize index to bind to.
			index_name?: string

			// JSON data to use.
			json?: string

			// The
			// [jurisdiction](https://developers.cloudflare.com/r2/reference/data-location/#jurisdictional-restrictions)
			// of the R2 bucket.
			// Available values: "eu", "fedramp".
			jurisdiction?: string

			// Base64-encoded key data. Required if `format` is "raw",
			// "pkcs8", or "spki".
			key_base64?: string

			// Outbound worker.
			outbound?: close({
				// Pass information from the Dispatch Worker to the Outbound
				// Worker through the parameters.
				params?: [...string]

				// Outbound worker.
				worker?: close({
					// Environment of the outbound worker.
					environment?: string

					// Name of the outbound worker.
					service?: string
				})
			})

			// Key data in [JSON Web
			// Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key)
			// format. Required if `format` is "jwk".
			key_jwk?: string

			// A JavaScript variable name for the binding.
			name!: string

			// The name of the dispatch namespace.
			namespace?: string

			// Namespace identifier tag.
			namespace_id?: string

			// The old name of the inherited binding. If set, the binding will
			// be renamed from `old_name` to `name` in the new version. If
			// not set, the binding will keep the same name between versions.
			old_name?: string

			// The name of the file containing the data content. Only accepted
			// for `service worker syntax` Workers.
			part?: string

			// Name of the Pipeline to bind to.
			pipeline?: string

			// Name of the Queue to bind to.
			queue_name?: string

			// The script where the Durable Object is defined, if it is
			// external to this Worker.
			script_name?: string

			// Name of the secret in the store.
			secret_name?: string

			// Name of Worker to bind to.
			service?: string

			// ID of the store containing the secret.
			store_id?: string

			// The text value to use.
			text?: string

			// The kind of resource that the binding provides.
			// Available values: "ai", "analytics_engine", "assets",
			// "browser", "d1", "data_blob", "dispatch_namespace",
			// "durable_object_namespace", "hyperdrive", "inherit", "images",
			// "json", "kv_namespace", "mtls_certificate", "plain_text",
			// "pipelines", "queue", "r2_bucket", "secret_text",
			// "send_email", "service", "tail_consumer", "text_blob",
			// "vectorize", "version_metadata", "secrets_store_secret",
			// "secret_key", "workflow", "wasm_module".
			type!: string

			// Allowed operations with the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
			usages?: [...string]

			// Identifier for the version to inherit the binding from, which
			// can be the version ID or the literal "latest" to inherit from
			// the latest version. Defaults to inheriting the binding from
			// the latest version.
			version_id?: string

			// Name of the Workflow to bind to.
			workflow_name?: string
		})]])

		// Date indicating targeted support in the Workers runtime.
		// Backwards incompatible fixes to the runtime following this
		// date will not affect this Worker.
		compatibility_date?: string

		// Flags that enable or disable certain features in the Workers
		// runtime. Used to enable upcoming features or opt in or out of
		// specific changes not included in a `compatibility_date`.
		compatibility_flags?: [...string]

		// Limits to apply for this Worker.
		limits?: close({
			// The amount of CPU time this Worker can use in milliseconds.
			cpu_ms?: number
		})

		// Module or Service Worker contents of the Worker. Conflicts with
		// `content_file`.
		content?: string

		// Migrations to apply for Durable Objects associated with this
		// Worker.
		migrations?: close({
			// A list of classes to delete Durable Object namespaces from.
			deleted_classes?: [...string]

			// A list of classes to create Durable Object namespaces from.
			new_classes?: [...string]

			// A list of classes with Durable Object namespaces that were
			// renamed.
			renamed_classes?: matchN(1, [close({
				from?: string
				to?:   string
			}), [...close({
				from?: string
				to?:   string
			})]])

			// A list of classes to create Durable Object namespaces with
			// SQLite from.
			new_sqlite_classes?: [...string]

			// Migrations to apply in order.
			steps?: matchN(1, [close({
				// A list of classes to delete Durable Object namespaces from.
				deleted_classes?: [...string]

				// A list of classes to create Durable Object namespaces from.
				new_classes?: [...string]

				// A list of classes with Durable Object namespaces that were
				// renamed.
				renamed_classes?: matchN(1, [close({
					from?: string
					to?:   string
				}), [...close({
					from?: string
					to?:   string
				})]])

				// A list of classes to create Durable Object namespaces with
				// SQLite from.
				new_sqlite_classes?: [...string]

				// A list of transfers for Durable Object namespaces from a
				// different Worker and class to a class defined in this Worker.
				transferred_classes?: matchN(1, [close({
					from?:        string
					from_script?: string
					to?:          string
				}), [...close({
					from?:        string
					from_script?: string
					to?:          string
				})]])
			}), [...close({
				// A list of classes to delete Durable Object namespaces from.
				deleted_classes?: [...string]

				// A list of classes to create Durable Object namespaces from.
				new_classes?: [...string]

				// A list of classes with Durable Object namespaces that were
				// renamed.
				renamed_classes?: matchN(1, [close({
					from?: string
					to?:   string
				}), [...close({
					from?: string
					to?:   string
				})]])

				// A list of classes to create Durable Object namespaces with
				// SQLite from.
				new_sqlite_classes?: [...string]

				// A list of transfers for Durable Object namespaces from a
				// different Worker and class to a class defined in this Worker.
				transferred_classes?: matchN(1, [close({
					from?:        string
					from_script?: string
					to?:          string
				}), [...close({
					from?:        string
					from_script?: string
					to?:          string
				})]])
			})]])

			// Tag to set as the latest migration tag.
			new_tag?: string

			// A list of transfers for Durable Object namespaces from a
			// different Worker and class to a class defined in this Worker.
			transferred_classes?: matchN(1, [close({
				from?:        string
				from_script?: string
				to?:          string
			}), [...close({
				from?:        string
				from_script?: string
				to?:          string
			})]])

			// Tag used to verify against the latest migration tag for this
			// Worker. If they don't match, the upload is rejected.
			old_tag?: string
		})

		// Path to a file containing the Module or Service Worker contents
		// of the Worker. Conflicts with `content`. Must be paired with
		// `content_sha256`.
		content_file?: string

		// SHA-256 hash of the Worker contents. Used to trigger updates
		// when source code changes. Must be provided when `content_file`
		// is specified.
		content_sha256?: string

		// Named exports, such as Durable Object class implementations and
		// named entrypoints.
		named_handlers?: matchN(1, [close({
			// The names of handlers exported as part of the named export.
			handlers?: [...string]

			// The name of the export.
			name?: string
		}), [...close({
			// The names of handlers exported as part of the named export.
			handlers?: [...string]

			// The name of the export.
			name?: string
		})]])

		// Content-Type of the Worker. Required if uploading a
		// non-JavaScript Worker (e.g. "text/x-python").
		content_type?: string

		// When the script was created.
		created_on?: string

		// Hashed script content, can be used in a If-None-Match header
		// when updating.
		etag?: string

		// Observability settings for the Worker.
		observability?: close({
			// Whether observability is enabled for the Worker.
			enabled!: bool

			// The sampling rate for incoming requests. From 0 to 1 (1 = 100%,
			// 0.1 = 10%). Default is 1.
			head_sampling_rate?: number

			// Log settings for the Worker.
			logs?: close({
				// A list of destinations where logs will be exported to.
				destinations?: [...string]

				// Whether logs are enabled for the Worker.
				enabled!: bool

				// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%).
				// Default is 1.
				head_sampling_rate?: number

				// Whether [invocation
				// logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs)
				// are enabled for the Worker.
				invocation_logs!: bool

				// Whether log persistence is enabled for the Worker.
				persist?: bool
			})
		})

		// The names of handlers exported as part of the default export.
		handlers?: [...string]

		// Whether a Worker contains assets.
		has_assets?: bool

		// Whether a Worker contains modules.
		has_modules?: bool

		// Name of the script, used in URLs and route configuration.
		id?: string

		// Retain assets which exist for a previously uploaded Worker
		// version; used in lieu of providing a completion token.
		keep_assets?: bool

		// Configuration for [Smart
		// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
		// Specify either mode for Smart Placement, or one of
		// region/hostname/host for targeted placement.
		placement?: close({
			// TCP host and port for targeted placement.
			host?: string

			// HTTP hostname for targeted placement.
			hostname?: string

			// The last time the script was analyzed for [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			last_analyzed_at?: string

			// Enables [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			// Available values: "smart".
			mode?: string

			// Cloud region for targeted placement in format
			// 'provider:region'.
			region?: string

			// Status of [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			// Available values: "SUCCESS", "UNSUPPORTED_APPLICATION",
			// "INSUFFICIENT_INVOCATIONS".
			status?: string
		})

		// List of binding types to keep from previous_upload.
		keep_bindings?: [...string]

		// List of Workers that will consume logs from the attached
		// Worker.
		tail_consumers?: matchN(1, [close({
			// Optional environment if the Worker utilizes one.
			environment?: string

			// Optional dispatch namespace the script belongs to.
			namespace?: string

			// Name of Worker that is to be the consumer.
			service!: string
		}), [...close({
			// Optional environment if the Worker utilizes one.
			environment?: string

			// Optional dispatch namespace the script belongs to.
			namespace?: string

			// Name of Worker that is to be the consumer.
			service!: string
		})]])

		// The client most recently used to deploy this Worker.
		last_deployed_from?: string

		// Whether Logpush is turned on for the Worker.
		logpush?: bool

		// Name of the uploaded file that contains the main module (e.g.
		// the file exporting a `fetch` handler). Indicates a `module
		// syntax` Worker.
		main_module?: string

		// The tag of the Durable Object migration that was most recently
		// applied for this Worker.
		migration_tag?: string

		// When the script was last modified.
		modified_on?: string

		// Name of the script, used in URLs and route configuration.
		script_name!:     string
		startup_time_ms?: number

		// Usage model for the Worker invocations.
		// Available values: "standard", "bundled", "unbound".
		usage_model?: string
	})
}
