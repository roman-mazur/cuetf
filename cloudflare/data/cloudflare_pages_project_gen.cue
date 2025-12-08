package data

#cloudflare_pages_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_pages_project")
	close({
		// Identifier.
		account_id!: string

		// Configs for the project build process.
		build_config?: close({
			// Enable build caching for the project.
			build_caching?: bool

			// Command used to build project.
			build_command?: string

			// Assets output directory of the build.
			destination_dir?: string

			// Directory to run the command.
			root_dir?: string

			// The classifying tag for analytics.
			web_analytics_tag?: string

			// The auth token for analytics.
			web_analytics_token?: string
		})

		// When the project was created.
		created_on?: string

		// Most recent production deployment of the project.
		canonical_deployment?: close({
			// A list of alias URLs pointing to this deployment.
			aliases?: [...string]

			// Configs for the project build process.
			build_config?: close({
				// Enable build caching for the project.
				build_caching?: bool

				// Command used to build project.
				build_command?: string

				// Assets output directory of the build.
				destination_dir?: string

				// Directory to run the command.
				root_dir?: string

				// The classifying tag for analytics.
				web_analytics_tag?: string

				// The auth token for analytics.
				web_analytics_token?: string
			})

			// When the deployment was created.
			created_on?: string

			// Info about what caused the deployment.
			deployment_trigger?: close({
				// Additional info about the trigger.
				metadata?: close({
					// Where the trigger happened.
					branch?: string

					// Whether the deployment trigger commit was dirty.
					commit_dirty?: bool

					// Hash of the deployment trigger commit.
					commit_hash?: string

					// Message of the deployment trigger commit.
					commit_message?: string
				})

				// What caused the deployment.
				// Available values: "github:push", "ad_hoc", "deploy_hook".
				type?: string
			})

			// Environment variables used for builds and Pages Functions.
			env_vars?: [string]: close({
				// Available values: "plain_text", "secret_text".
				type?: string

				// Environment variable value.
				value?: string
			})

			// Type of deploy.
			// Available values: "preview", "production".
			environment?: string

			// Id of the deployment.
			id?: string

			// If the deployment has been skipped.
			is_skipped?: bool

			// The status of the deployment.
			latest_stage?: close({
				// When the stage ended.
				ended_on?: string

				// The current build stage.
				// Available values: "queued", "initialize", "clone_repo",
				// "build", "deploy".
				name?: string

				// When the stage started.
				started_on?: string

				// State of the current stage.
				// Available values: "success", "idle", "active", "failure",
				// "canceled".
				status?: string
			})

			// When the deployment was last modified.
			modified_on?: string

			// Id of the project.
			project_id?: string

			// Name of the project.
			project_name?: string

			// Short Id (8 character) of the deployment.
			short_id?: string

			// Configs for the project source control.
			source?: close({
				config?: close({
					// The owner of the repository.
					owner?: string

					// The owner ID of the repository.
					owner_id?: string

					// A list of paths that should be excluded from triggering a
					// preview deployment. Wildcard syntax (`*`) is supported.
					path_excludes?: [...string]

					// A list of paths that should be watched to trigger a preview
					// deployment. Wildcard syntax (`*`) is supported.
					path_includes?: [...string]

					// Whether to enable PR comments.
					pr_comments_enabled?: bool

					// A list of branches that should not trigger a preview
					// deployment. Wildcard syntax (`*`) is supported. Must be used
					// with `preview_deployment_setting` set to `custom`.
					preview_branch_excludes?: [...string]

					// A list of branches that should trigger a preview deployment.
					// Wildcard syntax (`*`) is supported. Must be used with
					// `preview_deployment_setting` set to `custom`.
					preview_branch_includes?: [...string]

					// Controls whether commits to preview branches trigger a preview
					// deployment.
					// Available values: "all", "none", "custom".
					preview_deployment_setting?: string

					// The production branch of the repository.
					production_branch?: string

					// Whether to trigger a production deployment on commits to the
					// production branch.
					production_deployments_enabled?: bool

					// The ID of the repository.
					repo_id?: string

					// The name of the repository.
					repo_name?: string
				})

				// The source control management provider.
				// Available values: "github", "gitlab".
				type?: string
			})

			// List of past stages.
			stages?: matchN(1, [close({
				// When the stage ended.
				ended_on?: string

				// The current build stage.
				// Available values: "queued", "initialize", "clone_repo",
				// "build", "deploy".
				name?: string

				// When the stage started.
				started_on?: string

				// State of the current stage.
				// Available values: "success", "idle", "active", "failure",
				// "canceled".
				status?: string
			}), [...close({
				// When the stage ended.
				ended_on?: string

				// The current build stage.
				// Available values: "queued", "initialize", "clone_repo",
				// "build", "deploy".
				name?: string

				// When the stage started.
				started_on?: string

				// State of the current stage.
				// Available values: "success", "idle", "active", "failure",
				// "canceled".
				status?: string
			})]])

			// The live URL to view this deployment.
			url?: string

			// Whether the deployment uses functions.
			uses_functions?: bool
		})

		// A list of associated custom domains for the project.
		domains?: [...string]

		// Configs for deployments in a project.
		deployment_configs?: close({
			// Configs for preview deploys.
			preview?: close({
				// Constellation bindings used for Pages Functions.
				ai_bindings?: [string]: close({
					project_id?: string
				})

				// Whether to always use the latest compatibility date for Pages
				// Functions.
				always_use_latest_compatibility_date?: bool

				// Analytics Engine bindings used for Pages Functions.
				analytics_engine_datasets?: [string]: close({
					// Name of the dataset.
					dataset?: string
				})

				// Browser bindings used for Pages Functions.
				browsers?: [string]: close({})

				// The major version of the build image to use for Pages
				// Functions.
				build_image_major_version?: number

				// Compatibility date used for Pages Functions.
				compatibility_date?: string

				// Compatibility flags used for Pages Functions.
				compatibility_flags?: [...string]

				// D1 databases used for Pages Functions.
				d1_databases?: [string]: close({
					// UUID of the D1 database.
					id?: string
				})

				// Durable Object namespaces used for Pages Functions.
				durable_object_namespaces?: [string]: close({
					// ID of the Durable Object namespace.
					namespace_id?: string
				})

				// Environment variables used for builds and Pages Functions.
				env_vars?: [string]: close({
					// Available values: "plain_text", "secret_text".
					type?: string

					// Environment variable value.
					value?: string
				})

				// Hyperdrive bindings used for Pages Functions.
				hyperdrive_bindings?: [string]: close({
					id?: string
				})

				// KV namespaces used for Pages Functions.
				kv_namespaces?: [string]: close({
					// ID of the KV namespace.
					namespace_id?: string
				})

				// Whether to fail open when the deployment config cannot be
				// applied.
				fail_open?: bool

				// Limits for Pages Functions.
				limits?: close({
					// CPU time limit in milliseconds.
					cpu_ms?: number
				})

				// mTLS bindings used for Pages Functions.
				mtls_certificates?: [string]: close({
					certificate_id?: string
				})

				// Placement setting used for Pages Functions.
				placement?: close({
					// Placement mode.
					mode?: string
				})

				// Queue Producer bindings used for Pages Functions.
				queue_producers?: [string]: close({
					// Name of the Queue.
					name?: string
				})

				// R2 buckets used for Pages Functions.
				r2_buckets?: [string]: close({
					// Jurisdiction of the R2 bucket.
					jurisdiction?: string

					// Name of the R2 bucket.
					name?: string
				})

				// Hash of the Wrangler configuration used for the deployment.
				wrangler_config_hash?: string

				// Services used for Pages Functions.
				services?: [string]: close({
					// The entrypoint to bind to.
					entrypoint?: string

					// The Service environment.
					environment?: string

					// The Service name.
					service?: string
				})

				// Vectorize bindings used for Pages Functions.
				vectorize_bindings?: [string]: close({
					index_name?: string
				})
			})

			// Configs for production deploys.
			production?: close({
				// Constellation bindings used for Pages Functions.
				ai_bindings?: [string]: close({
					project_id?: string
				})

				// Whether to always use the latest compatibility date for Pages
				// Functions.
				always_use_latest_compatibility_date?: bool

				// Analytics Engine bindings used for Pages Functions.
				analytics_engine_datasets?: [string]: close({
					// Name of the dataset.
					dataset?: string
				})

				// Browser bindings used for Pages Functions.
				browsers?: [string]: close({})

				// The major version of the build image to use for Pages
				// Functions.
				build_image_major_version?: number

				// Compatibility date used for Pages Functions.
				compatibility_date?: string

				// Compatibility flags used for Pages Functions.
				compatibility_flags?: [...string]

				// D1 databases used for Pages Functions.
				d1_databases?: [string]: close({
					// UUID of the D1 database.
					id?: string
				})

				// Durable Object namespaces used for Pages Functions.
				durable_object_namespaces?: [string]: close({
					// ID of the Durable Object namespace.
					namespace_id?: string
				})

				// Environment variables used for builds and Pages Functions.
				env_vars?: [string]: close({
					// Available values: "plain_text", "secret_text".
					type?: string

					// Environment variable value.
					value?: string
				})

				// Hyperdrive bindings used for Pages Functions.
				hyperdrive_bindings?: [string]: close({
					id?: string
				})

				// KV namespaces used for Pages Functions.
				kv_namespaces?: [string]: close({
					// ID of the KV namespace.
					namespace_id?: string
				})

				// Whether to fail open when the deployment config cannot be
				// applied.
				fail_open?: bool

				// Limits for Pages Functions.
				limits?: close({
					// CPU time limit in milliseconds.
					cpu_ms?: number
				})

				// mTLS bindings used for Pages Functions.
				mtls_certificates?: [string]: close({
					certificate_id?: string
				})

				// Placement setting used for Pages Functions.
				placement?: close({
					// Placement mode.
					mode?: string
				})

				// Queue Producer bindings used for Pages Functions.
				queue_producers?: [string]: close({
					// Name of the Queue.
					name?: string
				})

				// R2 buckets used for Pages Functions.
				r2_buckets?: [string]: close({
					// Jurisdiction of the R2 bucket.
					jurisdiction?: string

					// Name of the R2 bucket.
					name?: string
				})

				// Hash of the Wrangler configuration used for the deployment.
				wrangler_config_hash?: string

				// Services used for Pages Functions.
				services?: [string]: close({
					// The entrypoint to bind to.
					entrypoint?: string

					// The Service environment.
					environment?: string

					// The Service name.
					service?: string
				})

				// Vectorize bindings used for Pages Functions.
				vectorize_bindings?: [string]: close({
					index_name?: string
				})
			})
		})

		// Framework the project is using.
		framework?: string

		// Version of the framework the project is using.
		framework_version?: string

		// Name of the project.
		id?: string

		// Name of the project.
		name?: string

		// Most recent deployment of the project.
		latest_deployment?: close({
			// A list of alias URLs pointing to this deployment.
			aliases?: [...string]

			// Configs for the project build process.
			build_config?: close({
				// Enable build caching for the project.
				build_caching?: bool

				// Command used to build project.
				build_command?: string

				// Assets output directory of the build.
				destination_dir?: string

				// Directory to run the command.
				root_dir?: string

				// The classifying tag for analytics.
				web_analytics_tag?: string

				// The auth token for analytics.
				web_analytics_token?: string
			})

			// When the deployment was created.
			created_on?: string

			// Info about what caused the deployment.
			deployment_trigger?: close({
				// Additional info about the trigger.
				metadata?: close({
					// Where the trigger happened.
					branch?: string

					// Whether the deployment trigger commit was dirty.
					commit_dirty?: bool

					// Hash of the deployment trigger commit.
					commit_hash?: string

					// Message of the deployment trigger commit.
					commit_message?: string
				})

				// What caused the deployment.
				// Available values: "github:push", "ad_hoc", "deploy_hook".
				type?: string
			})

			// Environment variables used for builds and Pages Functions.
			env_vars?: [string]: close({
				// Available values: "plain_text", "secret_text".
				type?: string

				// Environment variable value.
				value?: string
			})

			// Type of deploy.
			// Available values: "preview", "production".
			environment?: string

			// Id of the deployment.
			id?: string

			// If the deployment has been skipped.
			is_skipped?: bool

			// The status of the deployment.
			latest_stage?: close({
				// When the stage ended.
				ended_on?: string

				// The current build stage.
				// Available values: "queued", "initialize", "clone_repo",
				// "build", "deploy".
				name?: string

				// When the stage started.
				started_on?: string

				// State of the current stage.
				// Available values: "success", "idle", "active", "failure",
				// "canceled".
				status?: string
			})

			// When the deployment was last modified.
			modified_on?: string

			// Id of the project.
			project_id?: string

			// Name of the project.
			project_name?: string

			// Short Id (8 character) of the deployment.
			short_id?: string

			// Configs for the project source control.
			source?: close({
				config?: close({
					// The owner of the repository.
					owner?: string

					// The owner ID of the repository.
					owner_id?: string

					// A list of paths that should be excluded from triggering a
					// preview deployment. Wildcard syntax (`*`) is supported.
					path_excludes?: [...string]

					// A list of paths that should be watched to trigger a preview
					// deployment. Wildcard syntax (`*`) is supported.
					path_includes?: [...string]

					// Whether to enable PR comments.
					pr_comments_enabled?: bool

					// A list of branches that should not trigger a preview
					// deployment. Wildcard syntax (`*`) is supported. Must be used
					// with `preview_deployment_setting` set to `custom`.
					preview_branch_excludes?: [...string]

					// A list of branches that should trigger a preview deployment.
					// Wildcard syntax (`*`) is supported. Must be used with
					// `preview_deployment_setting` set to `custom`.
					preview_branch_includes?: [...string]

					// Controls whether commits to preview branches trigger a preview
					// deployment.
					// Available values: "all", "none", "custom".
					preview_deployment_setting?: string

					// The production branch of the repository.
					production_branch?: string

					// Whether to trigger a production deployment on commits to the
					// production branch.
					production_deployments_enabled?: bool

					// The ID of the repository.
					repo_id?: string

					// The name of the repository.
					repo_name?: string
				})

				// The source control management provider.
				// Available values: "github", "gitlab".
				type?: string
			})

			// List of past stages.
			stages?: matchN(1, [close({
				// When the stage ended.
				ended_on?: string

				// The current build stage.
				// Available values: "queued", "initialize", "clone_repo",
				// "build", "deploy".
				name?: string

				// When the stage started.
				started_on?: string

				// State of the current stage.
				// Available values: "success", "idle", "active", "failure",
				// "canceled".
				status?: string
			}), [...close({
				// When the stage ended.
				ended_on?: string

				// The current build stage.
				// Available values: "queued", "initialize", "clone_repo",
				// "build", "deploy".
				name?: string

				// When the stage started.
				started_on?: string

				// State of the current stage.
				// Available values: "success", "idle", "active", "failure",
				// "canceled".
				status?: string
			})]])

			// The live URL to view this deployment.
			url?: string

			// Whether the deployment uses functions.
			uses_functions?: bool
		})

		// Name of the preview script.
		preview_script_name?: string

		// Configs for the project source control.
		source?: close({
			config?: close({
				// The owner of the repository.
				owner?: string

				// The owner ID of the repository.
				owner_id?: string

				// A list of paths that should be excluded from triggering a
				// preview deployment. Wildcard syntax (`*`) is supported.
				path_excludes?: [...string]

				// A list of paths that should be watched to trigger a preview
				// deployment. Wildcard syntax (`*`) is supported.
				path_includes?: [...string]

				// Whether to enable PR comments.
				pr_comments_enabled?: bool

				// A list of branches that should not trigger a preview
				// deployment. Wildcard syntax (`*`) is supported. Must be used
				// with `preview_deployment_setting` set to `custom`.
				preview_branch_excludes?: [...string]

				// A list of branches that should trigger a preview deployment.
				// Wildcard syntax (`*`) is supported. Must be used with
				// `preview_deployment_setting` set to `custom`.
				preview_branch_includes?: [...string]

				// Controls whether commits to preview branches trigger a preview
				// deployment.
				// Available values: "all", "none", "custom".
				preview_deployment_setting?: string

				// The production branch of the repository.
				production_branch?: string

				// Whether to trigger a production deployment on commits to the
				// production branch.
				production_deployments_enabled?: bool

				// The ID of the repository.
				repo_id?: string

				// The name of the repository.
				repo_name?: string
			})

			// The source control management provider.
			// Available values: "github", "gitlab".
			type?: string
		})

		// Production branch of the project. Used to identify production
		// deployments.
		production_branch?: string

		// Name of the production script.
		production_script_name?: string

		// Name of the project.
		project_name!: string

		// The Cloudflare subdomain associated with the project.
		subdomain?: string

		// Whether the project uses functions.
		uses_functions?: bool
	})
}
