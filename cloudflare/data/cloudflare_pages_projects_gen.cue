package data

#cloudflare_pages_projects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_pages_projects")
	close({
		// Identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
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
					deployments_enabled?: bool
					owner?:               string
					path_excludes?: [...string]
					path_includes?: [...string]
					pr_comments_enabled?: bool

					// Available values: "all", "none", "custom".
					preview_deployment_setting?: string
					preview_branch_excludes?: [...string]
					preview_branch_includes?: [...string]
					production_branch?:              string
					production_deployments_enabled?: bool
					repo_name?:                      string
				})
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
		}), [...close({
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
					deployments_enabled?: bool
					owner?:               string
					path_excludes?: [...string]
					path_includes?: [...string]
					pr_comments_enabled?: bool

					// Available values: "all", "none", "custom".
					preview_deployment_setting?: string
					preview_branch_excludes?: [...string]
					preview_branch_includes?: [...string]
					production_branch?:              string
					production_deployments_enabled?: bool
					repo_name?:                      string
				})
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
		})]])
	})
}
