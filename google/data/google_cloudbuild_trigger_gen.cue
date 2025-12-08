package data

#google_cloudbuild_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloudbuild_trigger")
	close({
		// Configuration for manual approval to start a build invocation
		// of this BuildTrigger.
		// Builds created by this trigger will require approval before
		// they execute.
		// Any user with a Cloud Build Approver role for the project can
		// approve a build.
		approval_config?: [...close({
			approval_required?: bool
		})]

		// BitbucketServerTriggerConfig describes the configuration of a
		// trigger that creates a build whenever a Bitbucket Server event
		// is received.
		bitbucket_server_trigger_config?: [...close({
			bitbucket_server_config_resource?: string
			project_key?:                      string
			pull_request?: [...close({
				branch?:          string
				comment_control?: string
				invert_regex?:    bool
			})]
			push?: [...close({
				branch?:       string
				invert_regex?: bool
				tag?:          string
			})]
			repo_slug?: string
		})]

		// Contents of the build template. Either a filename or build
		// template must be provided.
		build?: [...close({
			artifacts?: [...close({
				images?: [...string]
				maven_artifacts?: [...close({
					artifact_id?: string
					group_id?:    string
					path?:        string
					repository?:  string
					version?:     string
				})]
				npm_packages?: [...close({
					package_path?: string
					repository?:   string
				})]
				objects?: [...close({
					location?: string
					paths?: [...string]
					timing?: [...close({
						end_time?:   string
						start_time?: string
					})]
				})]
				python_packages?: [...close({
					paths?: [...string]
					repository?: string
				})]
			})]
			available_secrets?: [...close({
				secret_manager?: [...close({
					env?:          string
					version_name?: string
				})]
			})]
			images?: [...string]
			logs_bucket?: string
			options?: [...close({
				disk_size_gb?:          number
				dynamic_substitutions?: bool
				env?: [...string]
				log_streaming_option?:    string
				logging?:                 string
				machine_type?:            string
				requested_verify_option?: string
				secret_env?: [...string]
				source_provenance_hash?: [...string]
				substitution_option?: string
				volumes?: [...close({
					name?: string
					path?: string
				})]
				worker_pool?: string
			})]
			queue_ttl?: string
			secret?: [...close({
				kms_key_name?: string
				secret_env?: [string]: string
			})]
			source?: [...close({
				repo_source?: [...close({
					branch_name?:  string
					commit_sha?:   string
					dir?:          string
					invert_regex?: bool
					project_id?:   string
					repo_name?:    string
					substitutions?: [string]: string
					tag_name?: string
				})]
				storage_source?: [...close({
					bucket?:     string
					generation?: string
					object?:     string
				})]
			})]
			step?: [...close({
				allow_exit_codes?: [...number]
				allow_failure?: bool
				args?: [...string]
				dir?:        string
				entrypoint?: string
				env?: [...string]
				id?:     string
				name?:   string
				script?: string
				secret_env?: [...string]
				timeout?: string
				timing?:  string
				volumes?: [...close({
					name?: string
					path?: string
				})]
				wait_for?: [...string]
			})]
			substitutions?: [string]: string
			tags?: [...string]
			timeout?: string
		})]

		// Time when the trigger was created.
		create_time?: string

		// Human-readable description of the trigger.
		description?: string

		// Configuration for triggers that respond to Developer Connect
		// events.
		developer_connect_event_config?: [...close({
			git_repository_link?:      string
			git_repository_link_type?: string
			pull_request?: [...close({
				branch?:          string
				comment_control?: string
				invert_regex?:    bool
			})]
			push?: [...close({
				branch?:       string
				invert_regex?: bool
				tag?:          string
			})]
		})]

		// Whether the trigger is disabled or not. If true, the trigger
		// will never result in a build.
		disabled?: bool

		// Path, from the source root, to a file whose contents is used
		// for the template.
		// Either a filename or build template must be provided. Set this
		// only when using trigger_template or github.
		// When using Pub/Sub, Webhook or Manual set the file name using
		// git_file_source instead.
		filename?: string

		// A Common Expression Language string. Used only with Pub/Sub and
		// Webhook.
		filter?: string

		// The file source describing the local or remote Build template.
		git_file_source?: [...close({
			bitbucket_server_config?:  string
			github_enterprise_config?: string
			path?:                     string
			repo_type?:                string
			repository?:               string
			revision?:                 string
			uri?:                      string
		})]

		// Describes the configuration of a trigger that creates a build
		// whenever a GitHub event is received.
		//
		// One of 'trigger_template', 'github', 'pubsub_config' or
		// 'webhook_config' must be provided.
		github?: [...close({
			enterprise_config_resource_name?: string
			name?:                            string
			owner?:                           string
			pull_request?: [...close({
				branch?:          string
				comment_control?: string
				invert_regex?:    bool
			})]
			push?: [...close({
				branch?:       string
				invert_regex?: bool
				tag?:          string
			})]
		})]

		// ignoredFiles and includedFiles are file glob matches using
		// https://golang.org/pkg/path/filepath/#Match
		// extended with support for '**'.
		//
		// If ignoredFiles and changed files are both empty, then they are
		// not
		// used to determine whether or not to trigger a build.
		//
		// If ignoredFiles is not empty, then we ignore any files that
		// match any
		// of the ignored_file globs. If the change has no files that are
		// outside
		// of the ignoredFiles globs, then we do not trigger a build.
		ignored_files?: [...string]
		id?: string

		// Build logs will be sent back to GitHub as part of the checkrun
		// result. Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
		// INCLUDE_BUILD_LOGS_WITH_STATUS Possible values:
		// ["INCLUDE_BUILD_LOGS_UNSPECIFIED",
		// "INCLUDE_BUILD_LOGS_WITH_STATUS"]
		include_build_logs?: string

		// ignoredFiles and includedFiles are file glob matches using
		// https://golang.org/pkg/path/filepath/#Match
		// extended with support for '**'.
		//
		// If any of the files altered in the commit pass the ignoredFiles
		// filter
		// and includedFiles is empty, then as far as this filter is
		// concerned, we
		// should trigger the build.
		//
		// If any of the files altered in the commit pass the ignoredFiles
		// filter
		// and includedFiles is not empty, then we make sure that at least
		// one of
		// those files matches a includedFiles glob. If not, then we do
		// not trigger
		// a build.
		included_files?: [...string]

		// The [Cloud Build
		// location](https://cloud.google.com/build/docs/locations) for
		// the trigger.
		// If not specified, "global" is used.
		location!: string

		// Name of the trigger. Must be unique within the project.
		name?: string

		// PubsubConfig describes the configuration of a trigger that
		// creates
		// a build whenever a Pub/Sub message is published.
		//
		// One of 'trigger_template', 'github', 'pubsub_config'
		// 'webhook_config' or 'source_to_build' must be provided.
		pubsub_config?: [...close({
			service_account_email?: string
			state?:                 string
			subscription?:          string
			topic?:                 string
		})]

		// The configuration of a trigger that creates a build whenever an
		// event from Repo API is received.
		repository_event_config?: [...close({
			pull_request?: [...close({
				branch?:          string
				comment_control?: string
				invert_regex?:    bool
			})]
			push?: [...close({
				branch?:       string
				invert_regex?: bool
				tag?:          string
			})]
			repository?: string
		})]
		project?: string

		// The service account used for all user-controlled operations
		// including
		// triggers.patch, triggers.run, builds.create, and builds.cancel.
		//
		// If no service account is set, then the standard Cloud Build
		// service account
		// ([PROJECT_NUM]@system.gserviceaccount.com) will be used
		// instead.
		//
		// Format:
		// projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}
		service_account?: string

		// The repo and ref of the repository from which to build.
		// This field is used only for those triggers that do not respond
		// to SCM events.
		// Triggers that respond to such events build source at whatever
		// commit caused the event.
		// This field is currently only used by Webhook, Pub/Sub, Manual,
		// and Cron triggers.
		//
		// One of 'trigger_template', 'github', 'pubsub_config'
		// 'webhook_config' or 'source_to_build' must be provided.
		source_to_build?: [...close({
			bitbucket_server_config?:  string
			github_enterprise_config?: string
			ref?:                      string
			repo_type?:                string
			repository?:               string
			uri?:                      string
		})]

		// Substitutions data for Build resource.
		substitutions?: [string]: string

		// Tags for annotation of a BuildTrigger
		tags?: [...string]

		// The unique identifier for the trigger.
		trigger_id!: string

		// Template describing the types of source changes to trigger a
		// build.
		//
		// Branch and tag names in trigger templates are interpreted as
		// regular
		// expressions. Any branch or tag change that matches that regular
		// expression will trigger a build.
		//
		// One of 'trigger_template', 'github', 'pubsub_config',
		// 'webhook_config' or 'source_to_build' must be provided.
		trigger_template?: [...close({
			branch_name?:  string
			commit_sha?:   string
			dir?:          string
			invert_regex?: bool
			project_id?:   string
			repo_name?:    string
			tag_name?:     string
		})]

		// WebhookConfig describes the configuration of a trigger that
		// creates
		// a build whenever a webhook is sent to a trigger's webhook URL.
		//
		// One of 'trigger_template', 'github', 'pubsub_config'
		// 'webhook_config' or 'source_to_build' must be provided.
		webhook_config?: [...close({
			secret?: string
			state?:  string
		})]
	})
}
