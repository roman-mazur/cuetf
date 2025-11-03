package res

#cloudflare_pages_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_pages_project")
	close({
		// Configs for the project build process.
		build_config?: close({
			// Enable build caching for the project.
			build_caching?: bool

			// Command used to build project.
			build_command?: string

			// Output directory of the build.
			destination_dir?: string

			// Directory to run the command.
			root_dir?: string

			// The classifying tag for analytics.
			web_analytics_tag?: string

			// The auth token for analytics.
			web_analytics_token?: string
		})

		// Identifier
		account_id!: string

		// When the project was created.
		created_on?: string

		// A list of associated custom domains for the project.
		domains?: [...string]

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

				// Output directory of the build.
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

					// Hash of the deployment trigger commit.
					commit_hash?: string

					// Message of the deployment trigger commit.
					commit_message?: string
				})

				// What caused the deployment.
				// Available values: "push", "ad_hoc".
				type?: string
			})

			// Type of deploy.
			// Available values: "preview", "production".
			environment?: string

			// Environment variables used for builds and Pages Functions.
			env_vars?: _

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
			source?: close({
				config?: close({
					// The owner of the repository.
					owner?: string

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

					// The name of the repository.
					repo_name?: string
				})

				// The source control management provider.
				// Available values: "github", "gitlab".
				type?: string
			})

			// Name of the project.
			project_name?: string

			// Short Id (8 character) of the deployment.
			short_id?: string

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
		})

		// Framework the project is using.
		framework?: string

		// Version of the framework the project is using.
		framework_version?: string

		// Configs for deployments in a project.
		deployment_configs?: close({
			// Configs for preview deploys.
			preview?: close({
				// Constellation bindings used for Pages Functions.
				ai_bindings?: _

				// Whether to always use the latest compatibility date for Pages
				// Functions.
				always_use_latest_compatibility_date?: bool

				// Analytics Engine bindings used for Pages Functions.
				analytics_engine_datasets?: _

				// Browser bindings used for Pages Functions.
				browsers?: _

				// The major version of the build image to use for Pages
				// Functions.
				build_image_major_version?: number

				// Compatibility date used for Pages Functions.
				compatibility_date?: string

				// Compatibility flags used for Pages Functions.
				compatibility_flags?: [...string]

				// D1 databases used for Pages Functions.
				d1_databases?: _

				// Durable Object namespaces used for Pages Functions.
				durable_object_namespaces?: _

				// Environment variables used for builds and Pages Functions.
				env_vars?: _

				// Hyperdrive bindings used for Pages Functions.
				hyperdrive_bindings?: _

				// KV namespaces used for Pages Functions.
				kv_namespaces?: _

				// Whether to fail open when the deployment config cannot be
				// applied.
				fail_open?: bool

				// Limits for Pages Functions.
				limits?: close({
					// CPU time limit in milliseconds.
					cpu_ms?: number
				})

				// mTLS bindings used for Pages Functions.
				mtls_certificates?: _

				// Placement setting used for Pages Functions.
				placement?: close({
					// Placement mode.
					mode?: string
				})

				// Queue Producer bindings used for Pages Functions.
				queue_producers?: _

				// R2 buckets used for Pages Functions.
				r2_buckets?: _

				// Hash of the Wrangler configuration used for the deployment.
				wrangler_config_hash?: string

				// Services used for Pages Functions.
				services?: _

				// Vectorize bindings used for Pages Functions.
				vectorize_bindings?: _
			})

			// Configs for production deploys.
			production?: close({
				// Constellation bindings used for Pages Functions.
				ai_bindings?: _

				// Whether to always use the latest compatibility date for Pages
				// Functions.
				always_use_latest_compatibility_date?: bool

				// Analytics Engine bindings used for Pages Functions.
				analytics_engine_datasets?: _

				// Browser bindings used for Pages Functions.
				browsers?: _

				// The major version of the build image to use for Pages
				// Functions.
				build_image_major_version?: number

				// Compatibility date used for Pages Functions.
				compatibility_date?: string

				// Compatibility flags used for Pages Functions.
				compatibility_flags?: [...string]

				// D1 databases used for Pages Functions.
				d1_databases?: _

				// Durable Object namespaces used for Pages Functions.
				durable_object_namespaces?: _

				// Environment variables used for builds and Pages Functions.
				env_vars?: _

				// Hyperdrive bindings used for Pages Functions.
				hyperdrive_bindings?: _

				// KV namespaces used for Pages Functions.
				kv_namespaces?: _

				// Whether to fail open when the deployment config cannot be
				// applied.
				fail_open?: bool

				// Limits for Pages Functions.
				limits?: close({
					// CPU time limit in milliseconds.
					cpu_ms?: number
				})

				// mTLS bindings used for Pages Functions.
				mtls_certificates?: _

				// Placement setting used for Pages Functions.
				placement?: close({
					// Placement mode.
					mode?: string
				})

				// Queue Producer bindings used for Pages Functions.
				queue_producers?: _

				// R2 buckets used for Pages Functions.
				r2_buckets?: _

				// Hash of the Wrangler configuration used for the deployment.
				wrangler_config_hash?: string

				// Services used for Pages Functions.
				services?: _

				// Vectorize bindings used for Pages Functions.
				vectorize_bindings?: _
			})
		})

		// Name of the project.
		id?: string

		// Name of the project.
		name!: string

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

				// Output directory of the build.
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

					// Hash of the deployment trigger commit.
					commit_hash?: string

					// Message of the deployment trigger commit.
					commit_message?: string
				})

				// What caused the deployment.
				// Available values: "push", "ad_hoc".
				type?: string
			})

			// Type of deploy.
			// Available values: "preview", "production".
			environment?: string

			// Environment variables used for builds and Pages Functions.
			env_vars?: _

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
			source?: close({
				config?: close({
					// The owner of the repository.
					owner?: string

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

					// The name of the repository.
					repo_name?: string
				})

				// The source control management provider.
				// Available values: "github", "gitlab".
				type?: string
			})

			// Name of the project.
			project_name?: string

			// Short Id (8 character) of the deployment.
			short_id?: string

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
		})

		// Name of the preview script.
		preview_script_name?: string

		// Production branch of the project. Used to identify production
		// deployments.
		production_branch!: string

		// Name of the production script.
		production_script_name?: string
		source?: close({
			config?: close({
				// The owner of the repository.
				owner?: string

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

				// The name of the repository.
				repo_name?: string
			})

			// The source control management provider.
			// Available values: "github", "gitlab".
			type?: string
		})

		// The Cloudflare subdomain associated with the project.
		subdomain?: string

		// Whether the project uses functions.
		uses_functions?: bool
	})
}
