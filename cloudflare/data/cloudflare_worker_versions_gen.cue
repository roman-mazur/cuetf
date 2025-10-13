package data

#cloudflare_worker_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_worker_versions")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// Metadata about the version.
			annotations?: close({
				// Human-readable message about the version.
				workers_message?: string

				// User-provided identifier for the version.
				workers_tag?: string

				// Operation that triggered the creation of the version.
				workers_triggered_by?: string
			})

			// Configuration for assets within a Worker.
			//
			// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers)
			// and
			// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/)
			// files should be
			// included as modules named `_headers` and `_redirects` with
			// content type `text/plain`.
			assets?: close({
				// Configuration for assets within a Worker.
				config?: close({
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

					// Contains a list path rules to control routing to either the
					// Worker or assets. Glob (*) and negative (!) rules are
					// supported. Rules must start with either '/' or '!/'. At least
					// one non-negative rule must be provided, and negative rules
					// have higher precedence than non-negative rules.
					run_worker_first?: [...string]
				})

				// Token provided upon successful upload of all files from a
				// registered manifest.
				jwt?: string
			})

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
				name?: string

				// Namespace to bind to.
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
				type?: string

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
				name?: string

				// Namespace to bind to.
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
				type?: string

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

			// When the version was created.
			created_on?: string

			// Version identifier.
			id?: string

			// Resource limits enforced at runtime.
			limits?: close({
				// CPU time limit in milliseconds.
				cpu_ms?: number
			})

			// The name of the main module in the `modules` array (e.g. the
			// name of the module that exports a `fetch` handler).
			main_module?: string

			// Migrations for Durable Objects associated with the version.
			// Migrations are applied when the version is deployed.
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

			// Code, sourcemaps, and other content used at runtime.
			//
			// This includes
			// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers)
			// and
			// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/)
			// files used to configure
			// [Static
			// Assets](https://developers.cloudflare.com/workers/static-assets/).
			// `_headers` and `_redirects` files should be
			// included as modules named `_headers` and `_redirects` with
			// content type `text/plain`.
			modules?: matchN(1, [close({
				// The base64-encoded module content.
				content_base64?: string

				// The content type of the module.
				content_type?: string

				// The name of the module.
				name?: string
			}), [...close({
				// The base64-encoded module content.
				content_base64?: string

				// The content type of the module.
				content_type?: string

				// The name of the module.
				name?: string
			})]])

			// Placement settings for the version.
			placement?: close({
				// Placement mode for the version.
				// Available values: "smart".
				mode?: string
			})

			// The integer version number, starting from one.
			"number"?: number

			// The client used to create the version.
			source?: string
		}), [...close({
			// Metadata about the version.
			annotations?: close({
				// Human-readable message about the version.
				workers_message?: string

				// User-provided identifier for the version.
				workers_tag?: string

				// Operation that triggered the creation of the version.
				workers_triggered_by?: string
			})

			// Configuration for assets within a Worker.
			//
			// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers)
			// and
			// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/)
			// files should be
			// included as modules named `_headers` and `_redirects` with
			// content type `text/plain`.
			assets?: close({
				// Configuration for assets within a Worker.
				config?: close({
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

					// Contains a list path rules to control routing to either the
					// Worker or assets. Glob (*) and negative (!) rules are
					// supported. Rules must start with either '/' or '!/'. At least
					// one non-negative rule must be provided, and negative rules
					// have higher precedence than non-negative rules.
					run_worker_first?: [...string]
				})

				// Token provided upon successful upload of all files from a
				// registered manifest.
				jwt?: string
			})

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
				name?: string

				// Namespace to bind to.
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
				type?: string

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
				name?: string

				// Namespace to bind to.
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
				type?: string

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

			// When the version was created.
			created_on?: string

			// Version identifier.
			id?: string

			// Resource limits enforced at runtime.
			limits?: close({
				// CPU time limit in milliseconds.
				cpu_ms?: number
			})

			// The name of the main module in the `modules` array (e.g. the
			// name of the module that exports a `fetch` handler).
			main_module?: string

			// Migrations for Durable Objects associated with the version.
			// Migrations are applied when the version is deployed.
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

			// Code, sourcemaps, and other content used at runtime.
			//
			// This includes
			// [`_headers`](https://developers.cloudflare.com/workers/static-assets/headers/#custom-headers)
			// and
			// [`_redirects`](https://developers.cloudflare.com/workers/static-assets/redirects/)
			// files used to configure
			// [Static
			// Assets](https://developers.cloudflare.com/workers/static-assets/).
			// `_headers` and `_redirects` files should be
			// included as modules named `_headers` and `_redirects` with
			// content type `text/plain`.
			modules?: matchN(1, [close({
				// The base64-encoded module content.
				content_base64?: string

				// The content type of the module.
				content_type?: string

				// The name of the module.
				name?: string
			}), [...close({
				// The base64-encoded module content.
				content_base64?: string

				// The content type of the module.
				content_type?: string

				// The name of the module.
				name?: string
			})]])

			// Placement settings for the version.
			placement?: close({
				// Placement mode for the version.
				// Available values: "smart".
				mode?: string
			})

			// The integer version number, starting from one.
			"number"?: number

			// The client used to create the version.
			source?: string
		})]])

		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Identifier for the Worker, which can be ID or name.
		worker_id!: string
	})
}
