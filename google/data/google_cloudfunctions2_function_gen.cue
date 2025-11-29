package data

#google_cloudfunctions2_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloudfunctions2_function")
	close({
		// Describes the Build step of the function that builds a
		// container
		// from the given source.
		build_config?: [...close({
			automatic_update_policy?: [...close({})]
			build?:             string
			docker_repository?: string
			entry_point?:       string
			environment_variables?: [string]: string
			on_deploy_update_policy?: [...close({
				runtime_version?: string
			})]
			runtime?:         string
			service_account?: string
			source?: [...close({
				repo_source?: [...close({
					branch_name?:  string
					commit_sha?:   string
					dir?:          string
					invert_regex?: bool
					project_id?:   string
					repo_name?:    string
					tag_name?:     string
				})]
				storage_source?: [...close({
					bucket?:     string
					generation?: number
					object?:     string
				})]
			})]
			worker_pool?: string
		})]

		// User-provided description of a function.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The environment the function is hosted on.
		environment?: string

		// An Eventarc trigger managed by Google Cloud Functions that
		// fires events in
		// response to a condition in another service.
		event_trigger?: [...close({
			event_filters?: [...close({
				attribute?: string
				operator?:  string
				value?:     string
			})]
			event_type?:            string
			pubsub_topic?:          string
			retry_policy?:          string
			service_account_email?: string
			trigger?:               string
			trigger_region?:        string
		})]

		// Resource name of a KMS crypto key (managed by the user) used to
		// encrypt/decrypt function resources.
		// It must match the pattern
		// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
		kms_key_name?: string
		id?:           string

		// A set of key/value label pairs associated with this Cloud
		// Function.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of this cloud function.
		location!: string

		// A user-defined name of the function. Function names must
		// be unique globally and match pattern
		// 'projects/*/locations/*/functions/*'.
		name!:    string
		project?: string

		// Describes the Service being deployed.
		service_config?: [...close({
			all_traffic_on_latest_revision?: bool
			available_cpu?:                  string
			available_memory?:               string
			binary_authorization_policy?:    string
			environment_variables?: [string]: string
			gcf_uri?:                          string
			ingress_settings?:                 string
			max_instance_count?:               number
			max_instance_request_concurrency?: number
			min_instance_count?:               number
			secret_environment_variables?: [...close({
				key?:        string
				project_id?: string
				secret?:     string
				version?:    string
			})]
			secret_volumes?: [...close({
				mount_path?: string
				project_id?: string
				secret?:     string
				versions?: [...close({
					path?:    string
					version?: string
				})]
			})]
			service?:                       string
			service_account_email?:         string
			timeout_seconds?:               number
			uri?:                           string
			vpc_connector?:                 string
			vpc_connector_egress_settings?: string
		})]

		// Describes the current state of the function.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The last update timestamp of a Cloud Function.
		update_time?: string

		// Output only. The deployed url for the function.
		url?: string
	})
}
