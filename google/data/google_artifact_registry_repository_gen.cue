package data

#google_artifact_registry_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_repository")
	close({
		// Cleanup policies for this repository. Cleanup policies indicate
		// when
		// certain package versions can be automatically deleted.
		// Map keys are policy IDs supplied by users during policy
		// creation. They must
		// unique within a repository and be under 128 characters in
		// length.
		cleanup_policies?: [...close({
			action?: string
			condition?: [...close({
				newer_than?: string
				older_than?: string
				package_name_prefixes?: [...string]
				tag_prefixes?: [...string]
				tag_state?: string
				version_name_prefixes?: [...string]
			})]
			id?: string
			most_recent_versions?: [...close({
				keep_count?: number
				package_name_prefixes?: [...string]
			})]
		})]

		// If true, the cleanup pipeline is prevented from deleting
		// versions in this
		// repository.
		cleanup_policy_dry_run?: bool

		// The time when the repository was created.
		create_time?: string

		// The user-provided description of the repository.
		description?: string

		// Docker repository config contains repository level
		// configuration for the repositories of docker type.
		docker_config?: [...close({
			immutable_tags?: bool
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The format of packages that are stored in the repository.
		// Supported formats
		// can be found
		// [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
		// You can only create alpha formats if you are a member of the
		// [alpha user
		// group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
		format?: string

		// The Cloud KMS resource name of the customer managed encryption
		// key that’s
		// used to encrypt the contents of the Repository. Has the form:
		// 'projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key'.
		// This value may not be changed after the Repository has been
		// created.
		kms_key_name?: string

		// Labels with user-defined metadata.
		// This field may contain up to 64 entries. Label keys and values
		// may be no
		// longer than 63 characters. Label keys must begin with a
		// lowercase letter
		// and may only contain lowercase letters, numeric characters,
		// underscores,
		// and dashes.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The name of the repository's location. In addition to specific
		// regions,
		// special values for multi-region locations are 'asia', 'europe',
		// and 'us'.
		// See
		// [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
		// or use the
		// [google_artifact_registry_locations](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/artifact_registry_locations)
		// data source for possible values.
		location!: string

		// MavenRepositoryConfig is maven related repository details.
		// Provides additional configuration details for repositories of
		// the maven
		// format type.
		maven_config?: [...close({
			allow_snapshot_overwrites?: bool
			version_policy?:            string
		})]

		// The mode configures the repository to serve artifacts from
		// different sources. Default value: "STANDARD_REPOSITORY"
		// Possible values: ["STANDARD_REPOSITORY", "VIRTUAL_REPOSITORY",
		// "REMOTE_REPOSITORY"]
		mode?: string

		// The name of the repository, for example:
		// "repo1"
		name?:    string
		project?: string

		// The repository endpoint, for example:
		// us-docker.pkg.dev/my-proj/my-repo.
		registry_uri?: string

		// Configuration specific for a Remote Repository.
		remote_repository_config?: [...close({
			apt_repository?: [...close({
				public_repository?: [...close({
					repository_base?: string
					repository_path?: string
				})]
			})]
			common_repository?: [...close({
				uri?: string
			})]
			description?:                 string
			disable_upstream_validation?: bool
			docker_repository?: [...close({
				custom_repository?: [...close({
					uri?: string
				})]
				public_repository?: string
			})]
			maven_repository?: [...close({
				custom_repository?: [...close({
					uri?: string
				})]
				public_repository?: string
			})]
			npm_repository?: [...close({
				custom_repository?: [...close({
					uri?: string
				})]
				public_repository?: string
			})]
			python_repository?: [...close({
				custom_repository?: [...close({
					uri?: string
				})]
				public_repository?: string
			})]
			upstream_credentials?: [...close({
				username_password_credentials?: [...close({
					password_secret_version?: string
					username?:                string
				})]
			})]
			yum_repository?: [...close({
				public_repository?: [...close({
					repository_base?: string
					repository_path?: string
				})]
			})]
		})]

		// The last part of the repository name, for example:
		// "repo1"
		repository_id!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the repository was last updated.
		update_time?: string

		// Configuration specific for a Virtual Repository.
		virtual_repository_config?: [...close({
			upstream_policies?: [...close({
				id?:         string
				priority?:   number
				repository?: string
			})]
		})]

		// Configuration for vulnerability scanning of artifacts stored in
		// this repository.
		vulnerability_scanning_config?: [...close({
			enablement_config?:       string
			enablement_state?:        string
			enablement_state_reason?: string
		})]
	})
}
