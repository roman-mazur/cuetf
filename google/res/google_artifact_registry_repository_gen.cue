package res

import "list"

#google_artifact_registry_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_artifact_registry_repository")
	close({
		// If true, the cleanup pipeline is prevented from deleting
		// versions in this
		// repository.
		cleanup_policy_dry_run?: bool

		// The time when the repository was created.
		create_time?: string

		// The user-provided description of the repository.
		description?: string

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
		format!: string

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

		// The name of the repository's location. In addition to specific
		// regions,
		// special values for multi-region locations are 'asia', 'europe',
		// and 'us'.
		// See
		// [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
		// or use the
		// [google_artifact_registry_locations](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/artifact_registry_locations)
		// data source for possible values.
		location?: string

		// The mode configures the repository to serve artifacts from
		// different sources. Default value: "STANDARD_REPOSITORY"
		// Possible values: ["STANDARD_REPOSITORY", "VIRTUAL_REPOSITORY",
		// "REMOTE_REPOSITORY"]
		mode?: string
		id?:   string

		// The name of the repository, for example:
		// "repo1"
		name?: string
		cleanup_policies?: matchN(1, [#cleanup_policies, [...#cleanup_policies]])
		docker_config?: matchN(1, [#docker_config, list.MaxItems(1) & [...#docker_config]])
		maven_config?: matchN(1, [#maven_config, list.MaxItems(1) & [...#maven_config]])
		remote_repository_config?: matchN(1, [#remote_repository_config, list.MaxItems(1) & [...#remote_repository_config]])
		timeouts?: #timeouts
		virtual_repository_config?: matchN(1, [#virtual_repository_config, list.MaxItems(1) & [...#virtual_repository_config]])
		vulnerability_scanning_config?: matchN(1, [#vulnerability_scanning_config, list.MaxItems(1) & [...#vulnerability_scanning_config]])
		project?: string

		// The repository endpoint, for example:
		// us-docker.pkg.dev/my-proj/my-repo.
		registry_uri?: string

		// The last part of the repository name, for example:
		// "repo1"
		repository_id!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the repository was last updated.
		update_time?: string
	})

	#cleanup_policies: close({
		condition?: matchN(1, [_#defs."/$defs/cleanup_policies/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/cleanup_policies/$defs/condition"]])
		most_recent_versions?: matchN(1, [_#defs."/$defs/cleanup_policies/$defs/most_recent_versions", list.MaxItems(1) & [..._#defs."/$defs/cleanup_policies/$defs/most_recent_versions"]])

		// Policy action. Possible values: ["DELETE", "KEEP"]
		action?: string
		id!:     string
	})

	#docker_config: close({
		// The repository which enabled this flag prevents all tags from
		// being modified, moved or deleted. This does not prevent tags
		// from being created.
		immutable_tags?: bool
	})

	#maven_config: close({
		// The repository with this flag will allow publishing the same
		// snapshot versions.
		allow_snapshot_overwrites?: bool

		// Version policy defines the versions that the registry will
		// accept. Default value: "VERSION_POLICY_UNSPECIFIED" Possible
		// values: ["VERSION_POLICY_UNSPECIFIED", "RELEASE", "SNAPSHOT"]
		version_policy?: string
	})

	#remote_repository_config: close({
		apt_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/apt_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/apt_repository"]])
		common_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/common_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/common_repository"]])

		// The description of the remote source.
		description?: string

		// If true, the remote repository upstream and upstream
		// credentials will
		// not be validated.
		disable_upstream_validation?: bool
		docker_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/docker_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/docker_repository"]])
		maven_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/maven_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/maven_repository"]])
		npm_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/npm_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/npm_repository"]])
		python_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/python_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/python_repository"]])
		upstream_credentials?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/upstream_credentials", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/upstream_credentials"]])
		yum_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/yum_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/yum_repository"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#virtual_repository_config: close({
		upstream_policies?: matchN(1, [_#defs."/$defs/virtual_repository_config/$defs/upstream_policies", [..._#defs."/$defs/virtual_repository_config/$defs/upstream_policies"]])
	})

	#vulnerability_scanning_config: close({
		// This configures whether vulnerability scanning is automatically
		// performed for artifacts pushed to this repository. Possible
		// values: ["INHERITED", "DISABLED"]
		enablement_config?: string

		// This field returns whether scanning is active for this
		// repository.
		enablement_state?: string

		// This provides an explanation for the state of scanning on this
		// repository.
		enablement_state_reason?: string
	})

	_#defs: "/$defs/cleanup_policies/$defs/condition": close({
		// Match versions newer than a duration.
		newer_than?: string

		// Match versions older than a duration.
		older_than?: string

		// Match versions by package prefix. Applied on any prefix match.
		package_name_prefixes?: [...string]

		// Match versions by tag prefix. Applied on any prefix match.
		tag_prefixes?: [...string]

		// Match versions by tag status. Default value: "ANY" Possible
		// values: ["TAGGED", "UNTAGGED", "ANY"]
		tag_state?: string

		// Match versions by version name prefix. Applied on any prefix
		// match.
		version_name_prefixes?: [...string]
	})

	_#defs: "/$defs/cleanup_policies/$defs/most_recent_versions": close({
		// Minimum number of versions to keep.
		keep_count?: number

		// Match versions by package prefix. Applied on any prefix match.
		package_name_prefixes?: [...string]
	})

	_#defs: "/$defs/remote_repository_config/$defs/apt_repository": close({
		public_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/apt_repository/$defs/public_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/apt_repository/$defs/public_repository"]])
	})

	_#defs: "/$defs/remote_repository_config/$defs/apt_repository/$defs/public_repository": close({
		// A common public repository base for Apt, e.g.
		// '"debian/dists/stable"' Possible values: ["DEBIAN", "UBUNTU",
		// "DEBIAN_SNAPSHOT"]
		repository_base!: string

		// Specific repository from the base.
		repository_path!: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/common_repository": close({
		// One of:
		// a. Artifact Registry Repository resource, e.g.
		// 'projects/UPSTREAM_PROJECT_ID/locations/REGION/repositories/UPSTREAM_REPOSITORY'
		// b. URI to the registry, e.g. '"https://registry-1.docker.io"'
		// c. URI to Artifact Registry Repository, e.g.
		// '"https://REGION-docker.pkg.dev/UPSTREAM_PROJECT_ID/UPSTREAM_REPOSITORY"'
		uri!: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/docker_repository": close({
		custom_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/docker_repository/$defs/custom_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/docker_repository/$defs/custom_repository"]])

		// Address of the remote repository. Possible values:
		// ["DOCKER_HUB"]
		public_repository?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/docker_repository/$defs/custom_repository": close({
		// Specific uri to the registry, e.g.
		// '"https://registry-1.docker.io"'
		uri?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/maven_repository": close({
		custom_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/maven_repository/$defs/custom_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/maven_repository/$defs/custom_repository"]])

		// Address of the remote repository. Possible values:
		// ["MAVEN_CENTRAL"]
		public_repository?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/maven_repository/$defs/custom_repository": close({
		// Specific uri to the registry, e.g.
		// '"https://repo.maven.apache.org/maven2"'
		uri?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/npm_repository": close({
		custom_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/npm_repository/$defs/custom_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/npm_repository/$defs/custom_repository"]])

		// Address of the remote repository. Possible values: ["NPMJS"]
		public_repository?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/npm_repository/$defs/custom_repository": close({
		// Specific uri to the registry, e.g.
		// '"https://registry.npmjs.org"'
		uri?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/python_repository": close({
		custom_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/python_repository/$defs/custom_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/python_repository/$defs/custom_repository"]])

		// Address of the remote repository. Possible values: ["PYPI"]
		public_repository?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/python_repository/$defs/custom_repository": close({
		// Specific uri to the registry, e.g. '"https://pypi.io"'
		uri?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/upstream_credentials": close({
		username_password_credentials?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/upstream_credentials/$defs/username_password_credentials", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/upstream_credentials/$defs/username_password_credentials"]])
	})

	_#defs: "/$defs/remote_repository_config/$defs/upstream_credentials/$defs/username_password_credentials": close({
		// The Secret Manager key version that holds the password to
		// access the
		// remote repository. Must be in the format of
		// 'projects/{project}/secrets/{secret}/versions/{version}'.
		password_secret_version?: string

		// The username to access the remote repository.
		username?: string
	})

	_#defs: "/$defs/remote_repository_config/$defs/yum_repository": close({
		public_repository?: matchN(1, [_#defs."/$defs/remote_repository_config/$defs/yum_repository/$defs/public_repository", list.MaxItems(1) & [..._#defs."/$defs/remote_repository_config/$defs/yum_repository/$defs/public_repository"]])
	})

	_#defs: "/$defs/remote_repository_config/$defs/yum_repository/$defs/public_repository": close({
		// A common public repository base for Yum. Possible values:
		// ["CENTOS", "CENTOS_DEBUG", "CENTOS_VAULT", "CENTOS_STREAM",
		// "ROCKY", "EPEL"]
		repository_base!: string

		// Specific repository from the base, e.g.
		// '"pub/rocky/9/BaseOS/x86_64/os"'
		repository_path!: string
	})

	_#defs: "/$defs/virtual_repository_config/$defs/upstream_policies": close({
		// The user-provided ID of the upstream policy.
		id?: string

		// Entries with a greater priority value take precedence in the
		// pull order.
		priority?: number

		// A reference to the repository resource, for example:
		// "projects/p1/locations/us-central1/repository/repo1".
		repository?: string
	})
}
