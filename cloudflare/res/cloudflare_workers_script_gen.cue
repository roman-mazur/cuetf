package res

#cloudflare_workers_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_script")
	close({
		// Identifier.
		account_id!: string

		// Configuration for assets within a Worker
		assets?: close({
			// Configuration for assets within a Worker.
			config?: close({
				// The contents of a _headers file (used to attach custom headers
				// on asset responses)
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
				// proxy paths ahead of asset serving)
				redirects?: string

				// When true, requests will always invoke the Worker script.
				// Otherwise, attempt to serve an asset matching the request,
				// falling back to the Worker script.
				run_worker_first?: bool
			})

			// Token provided upon successful upload of all files from a
			// registered manifest.
			jwt?: string
		})

		// List of bindings attached to a Worker. You can find more about
		// bindings on our docs:
		// https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
		bindings?: matchN(1, [close({
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

			// Algorithm-specific key parameters. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
			algorithm?: string

			// R2 bucket to bind to.
			bucket_name?: string

			// Identifier of the certificate to bind to.
			certificate_id?: string

			// The exported class name of the Durable Object.
			class_name?: string

			// The name of the dataset to bind to.
			dataset?: string

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

			// Base64-encoded key data. Required if `format` is "raw",
			// "pkcs8", or "spki".
			key_base64?: string

			// Key data in [JSON Web
			// Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key)
			// format. Required if `format` is "jwk".
			key_jwk?: string

			// A JavaScript variable name for the binding.
			name!: string

			// Namespace to bind to.
			namespace?: string

			// Namespace identifier tag.
			namespace_id?: string

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
			// "browser", "d1", "dispatch_namespace",
			// "durable_object_namespace", "hyperdrive", "json",
			// "kv_namespace", "mtls_certificate", "plain_text", "pipelines",
			// "queue", "r2_bucket", "secret_text", "service",
			// "tail_consumer", "vectorize", "version_metadata",
			// "secrets_store_secret", "secret_key", "workflow".
			type!: string

			// Allowed operations with the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
			usages?: [...string]

			// Name of the Workflow to bind to.
			workflow_name?: string
		}), [...close({
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

			// Algorithm-specific key parameters. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
			algorithm?: string

			// R2 bucket to bind to.
			bucket_name?: string

			// Identifier of the certificate to bind to.
			certificate_id?: string

			// The exported class name of the Durable Object.
			class_name?: string

			// The name of the dataset to bind to.
			dataset?: string

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

			// Base64-encoded key data. Required if `format` is "raw",
			// "pkcs8", or "spki".
			key_base64?: string

			// Key data in [JSON Web
			// Key](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#json_web_key)
			// format. Required if `format` is "jwk".
			key_jwk?: string

			// A JavaScript variable name for the binding.
			name!: string

			// Namespace to bind to.
			namespace?: string

			// Namespace identifier tag.
			namespace_id?: string

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
			// "browser", "d1", "dispatch_namespace",
			// "durable_object_namespace", "hyperdrive", "json",
			// "kv_namespace", "mtls_certificate", "plain_text", "pipelines",
			// "queue", "r2_bucket", "secret_text", "service",
			// "tail_consumer", "vectorize", "version_metadata",
			// "secrets_store_secret", "secret_key", "workflow".
			type!: string

			// Allowed operations with the key. [Learn
			// more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
			usages?: [...string]

			// Name of the Workflow to bind to.
			workflow_name?: string
		})]])

		// Name of the part in the multipart request that contains the
		// script (e.g. the file adding a listener to the `fetch` event).
		// Indicates a `service worker syntax` Worker.
		body_part?: string

		// Date indicating targeted support in the Workers runtime.
		// Backwards incompatible fixes to the runtime following this
		// date will not affect this Worker.
		compatibility_date?: string

		// Flags that enable or disable certain features in the Workers
		// runtime. Used to enable upcoming features or opt in or out of
		// specific changes not included in a `compatibility_date`.
		compatibility_flags?: [...string]

		// Module or Service Worker contents of the Worker. Exactly one of
		// `content` or `content_file` must be specified.
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
		// of the Worker. Exactly one of `content` or `content_file` must
		// be specified. Must be paired with `content_sha256`.
		content_file?: string

		// SHA-256 hash of the Worker contents. Used to trigger updates
		// when source code changes. Must be provided when `content_file`
		// is specified.
		content_sha256?: string

		// Observability settings for the Worker.
		observability?: close({
			// Whether observability is enabled for the Worker.
			enabled!: bool

			// The sampling rate for incoming requests. From 0 to 1 (1 = 100%,
			// 0.1 = 10%). Default is 1.
			head_sampling_rate?: number

			// Log settings for the Worker.
			logs?: close({
				// Whether logs are enabled for the Worker.
				enabled!: bool

				// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%).
				// Default is 1.
				head_sampling_rate?: number

				// Whether [invocation
				// logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs)
				// are enabled for the Worker.
				invocation_logs!: bool
			})
		})

		// Content-Type of the Worker. Required if uploading a
		// non-JavaScript Worker (e.g. "text/x-python").
		content_type?: string

		// When the script was created.
		created_on?: string

		// Hashed script content, can be used in a If-None-Match header
		// when updating.
		etag?: string

		// Whether a Worker contains assets.
		has_assets?: bool

		// Whether a Worker contains modules.
		has_modules?: bool

		// Name of the script, used in URLs and route configuration.
		id?: string

		// Configuration for [Smart
		// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
		placement?: close({
			// The last time the script was analyzed for [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			last_analyzed_at?: string

			// Enables [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			// Available values: "smart".
			mode?: string

			// Status of [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			// Available values: "SUCCESS", "UNSUPPORTED_APPLICATION",
			// "INSUFFICIENT_INVOCATIONS".
			status?: string
		})

		// Retain assets which exist for a previously uploaded Worker
		// version; used in lieu of providing a completion token.
		keep_assets?: bool

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

		// List of binding types to keep from previous_upload.
		keep_bindings?: [...string]

		// Whether Logpush is turned on for the Worker.
		logpush?: bool

		// Name of the part in the multipart request that contains the
		// main module (e.g. the file exporting a `fetch` handler).
		// Indicates a `module syntax` Worker.
		main_module?: string

		// When the script was last modified.
		modified_on?: string

		// Name of the script, used in URLs and route configuration.
		script_name!:     string
		startup_time_ms?: number

		// Usage model for the Worker invocations.
		// Available values: "standard".
		usage_model?: string
	})
}
