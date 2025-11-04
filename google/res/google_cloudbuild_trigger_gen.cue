package res

import "list"

#google_cloudbuild_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloudbuild_trigger")
	close({
		// Time when the trigger was created.
		create_time?: string

		// Human-readable description of the trigger.
		description?: string

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

		// Build logs will be sent back to GitHub as part of the checkrun
		// result. Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
		// INCLUDE_BUILD_LOGS_WITH_STATUS Possible values:
		// ["INCLUDE_BUILD_LOGS_UNSPECIFIED",
		// "INCLUDE_BUILD_LOGS_WITH_STATUS"]
		include_build_logs?: string
		id?:                 string

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
		approval_config?: matchN(1, [#approval_config, list.MaxItems(1) & [...#approval_config]])

		// The [Cloud Build
		// location](https://cloud.google.com/build/docs/locations) for
		// the trigger.
		// If not specified, "global" is used.
		location?: string
		bitbucket_server_trigger_config?: matchN(1, [#bitbucket_server_trigger_config, list.MaxItems(1) & [...#bitbucket_server_trigger_config]])
		build?: matchN(1, [#build, list.MaxItems(1) & [...#build]])
		developer_connect_event_config?: matchN(1, [#developer_connect_event_config, list.MaxItems(1) & [...#developer_connect_event_config]])
		git_file_source?: matchN(1, [#git_file_source, list.MaxItems(1) & [...#git_file_source]])
		github?: matchN(1, [#github, list.MaxItems(1) & [...#github]])
		pubsub_config?: matchN(1, [#pubsub_config, list.MaxItems(1) & [...#pubsub_config]])
		repository_event_config?: matchN(1, [#repository_event_config, list.MaxItems(1) & [...#repository_event_config]])
		source_to_build?: matchN(1, [#source_to_build, list.MaxItems(1) & [...#source_to_build]])
		timeouts?: #timeouts
		trigger_template?: matchN(1, [#trigger_template, list.MaxItems(1) & [...#trigger_template]])

		// Name of the trigger. Must be unique within the project.
		name?: string
		webhook_config?: matchN(1, [#webhook_config, list.MaxItems(1) & [...#webhook_config]])
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

		// Substitutions data for Build resource.
		substitutions?: [string]: string

		// Tags for annotation of a BuildTrigger
		tags?: [...string]

		// The unique identifier for the trigger.
		trigger_id?: string
	})

	#approval_config: close({
		// Whether or not approval is needed. If this is set on a build,
		// it will become pending when run,
		// and will need to be explicitly approved to start.
		approval_required?: bool
	})

	#bitbucket_server_trigger_config: close({
		// The Bitbucket server config resource that this trigger config
		// maps to.
		bitbucket_server_config_resource!: string

		// Key of the project that the repo is in. For example: The key
		// for https://mybitbucket.server/projects/TEST/repos/test-repo
		// is "TEST".
		project_key!: string
		pull_request?: matchN(1, [_#defs."/$defs/bitbucket_server_trigger_config/$defs/pull_request", list.MaxItems(1) & [..._#defs."/$defs/bitbucket_server_trigger_config/$defs/pull_request"]])

		// Slug of the repository. A repository slug is a URL-friendly
		// version of a repository name, automatically generated by
		// Bitbucket for use in the URL.
		// For example, if the repository name is 'test repo', in the URL
		// it would become 'test-repo' as in
		// https://mybitbucket.server/projects/TEST/repos/test-repo.
		repo_slug!: string
		push?: matchN(1, [_#defs."/$defs/bitbucket_server_trigger_config/$defs/push", list.MaxItems(1) & [..._#defs."/$defs/bitbucket_server_trigger_config/$defs/push"]])
	})

	#build: close({
		// A list of images to be pushed upon the successful completion of
		// all build steps.
		// The images are pushed using the builder service account's
		// credentials.
		// The digests of the pushed images will be stored in the Build
		// resource's results field.
		// If any of the images fail to be pushed, the build status is
		// marked FAILURE.
		images?: [...string]

		// Google Cloud Storage bucket where logs should be written.
		// Logs file names will be of the format
		// ${logsBucket}/log-${build_id}.txt.
		logs_bucket?: string
		artifacts?: matchN(1, [_#defs."/$defs/build/$defs/artifacts", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/artifacts"]])

		// TTL in queue for this build. If provided and the build is
		// enqueued longer than this value,
		// the build will expire and the build status will be EXPIRED.
		// The TTL starts ticking from createTime.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		queue_ttl?: string

		// Substitutions data for Build resource.
		substitutions?: [string]: string
		available_secrets?: matchN(1, [_#defs."/$defs/build/$defs/available_secrets", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/available_secrets"]])
		options?: matchN(1, [_#defs."/$defs/build/$defs/options", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/options"]])
		secret?: matchN(1, [_#defs."/$defs/build/$defs/secret", [..._#defs."/$defs/build/$defs/secret"]])
		source?: matchN(1, [_#defs."/$defs/build/$defs/source", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/source"]])

		// Tags for annotation of a Build. These are not docker tags.
		tags?: [...string]
		step!: matchN(1, [_#defs."/$defs/build/$defs/step", [_, ...] & [..._#defs."/$defs/build/$defs/step"]])

		// Amount of time that this build should be allowed to run, to
		// second granularity.
		// If this amount of time elapses, work on the build will cease
		// and the build status will be TIMEOUT.
		// This timeout must be equal to or greater than the sum of the
		// timeouts for build steps within the build.
		// The expected format is the number of seconds followed by s.
		// Default time is ten minutes (600s).
		timeout?: string
	})

	#developer_connect_event_config: close({
		pull_request?: matchN(1, [_#defs."/$defs/developer_connect_event_config/$defs/pull_request", list.MaxItems(1) & [..._#defs."/$defs/developer_connect_event_config/$defs/pull_request"]])
		push?: matchN(1, [_#defs."/$defs/developer_connect_event_config/$defs/push", list.MaxItems(1) & [..._#defs."/$defs/developer_connect_event_config/$defs/push"]])

		// The Developer Connect Git repository link, formatted as
		// 'projects/*/locations/*/connections/*/gitRepositoryLink/*'.
		git_repository_link!: string

		// The type of DeveloperConnect GitRepositoryLink.
		git_repository_link_type?: string
	})

	#git_file_source: close({
		// The full resource name of the bitbucket server config.
		// Format:
		// projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
		bitbucket_server_config?: string

		// The full resource name of the github enterprise config.
		// Format:
		// projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}.
		// projects/{project}/githubEnterpriseConfigs/{id}.
		github_enterprise_config?: string

		// The path of the file, with the repo root as the root of the
		// path.
		path!: string

		// The type of the repo, since it may not be explicit from the
		// repo field (e.g from a URL).
		// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB,
		// BITBUCKET_SERVER Possible values: ["UNKNOWN",
		// "CLOUD_SOURCE_REPOSITORIES", "GITHUB", "BITBUCKET_SERVER"]
		repo_type!: string

		// The fully qualified resource name of the Repo API repository.
		// The fully qualified resource name of the Repo API repository.
		// If unspecified, the repo from which the trigger invocation
		// originated is assumed to be the repo from which to read the
		// specified path.
		repository?: string

		// The branch, tag, arbitrary ref, or SHA version of the repo to
		// use when resolving the
		// filename (optional). This field respects the same
		// syntax/resolution as described here:
		// https://git-scm.com/docs/gitrevisions
		// If unspecified, the revision from which the trigger invocation
		// originated is assumed to be the revision from which to read
		// the specified path.
		revision?: string

		// The URI of the repo (optional). If unspecified, the repo from
		// which the trigger
		// invocation originated is assumed to be the repo from which to
		// read the specified path.
		uri?: string
	})

	#github: close({
		// The resource name of the github enterprise config that should
		// be applied to this installation.
		// For example:
		// "projects/{$projectId}/locations/{$locationId}/githubEnterpriseConfigs/{$configId}"
		enterprise_config_resource_name?: string

		// Name of the repository. For example: The name for
		// https://github.com/googlecloudplatform/cloud-builders is
		// "cloud-builders".
		name?: string
		pull_request?: matchN(1, [_#defs."/$defs/github/$defs/pull_request", list.MaxItems(1) & [..._#defs."/$defs/github/$defs/pull_request"]])

		// Owner of the repository. For example: The owner for
		// https://github.com/googlecloudplatform/cloud-builders is
		// "googlecloudplatform".
		owner?: string
		push?: matchN(1, [_#defs."/$defs/github/$defs/push", list.MaxItems(1) & [..._#defs."/$defs/github/$defs/push"]])
	})

	#pubsub_config: close({
		// Service account that will make the push request.
		service_account_email?: string

		// Potential issues with the underlying Pub/Sub subscription
		// configuration.
		// Only populated on get requests.
		state?: string

		// Output only. Name of the subscription.
		subscription?: string

		// The name of the topic from which this subscription is receiving
		// messages.
		topic!: string
	})

	#repository_event_config: close({
		pull_request?: matchN(1, [_#defs."/$defs/repository_event_config/$defs/pull_request", list.MaxItems(1) & [..._#defs."/$defs/repository_event_config/$defs/pull_request"]])
		push?: matchN(1, [_#defs."/$defs/repository_event_config/$defs/push", list.MaxItems(1) & [..._#defs."/$defs/repository_event_config/$defs/push"]])

		// The resource name of the Repo API resource.
		repository?: string
	})

	#source_to_build: close({
		// The full resource name of the bitbucket server config.
		// Format:
		// projects/{project}/locations/{location}/bitbucketServerConfigs/{id}.
		bitbucket_server_config?: string

		// The full resource name of the github enterprise config.
		// Format:
		// projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}.
		// projects/{project}/githubEnterpriseConfigs/{id}.
		github_enterprise_config?: string

		// The branch or tag to use. Must start with "refs/" (required).
		ref!: string

		// The type of the repo, since it may not be explicit from the
		// repo field (e.g from a URL).
		// Values can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB,
		// BITBUCKET_SERVER Possible values: ["UNKNOWN",
		// "CLOUD_SOURCE_REPOSITORIES", "GITHUB", "BITBUCKET_SERVER"]
		repo_type!: string

		// The qualified resource name of the Repo API repository.
		// Either uri or repository can be specified and is required.
		repository?: string

		// The URI of the repo.
		uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#trigger_template: close({
		// Name of the branch to build. Exactly one a of branch name, tag,
		// or commit SHA must be provided.
		// This field is a regular expression.
		branch_name?: string

		// Explicit commit SHA to build. Exactly one of a branch name,
		// tag, or commit SHA must be provided.
		commit_sha?: string

		// Directory, relative to the source root, in which to run the
		// build.
		//
		// This must be a relative path. If a step's dir is specified and
		// is an absolute path, this value is ignored for that step's
		// execution.
		dir?: string

		// Only trigger a build if the revision regex does NOT match the
		// revision regex.
		invert_regex?: bool

		// ID of the project that owns the Cloud Source Repository. If
		// omitted, the project ID requesting the build is assumed.
		project_id?: string

		// Name of the Cloud Source Repository. If omitted, the name
		// "default" is assumed.
		repo_name?: string

		// Name of the tag to build. Exactly one of a branch name, tag, or
		// commit SHA must be provided.
		// This field is a regular expression.
		tag_name?: string
	})

	#webhook_config: close({
		// Resource name for the secret required as a URL parameter.
		secret!: string

		// Potential issues with the underlying Pub/Sub subscription
		// configuration.
		// Only populated on get requests.
		state?: string
	})

	_#defs: "/$defs/bitbucket_server_trigger_config/$defs/pull_request": close({
		// Regex of branches to match.
		// The syntax of the regular expressions accepted is the syntax
		// accepted by RE2 and described at
		// https://github.com/google/re2/wiki/Syntax
		branch!: string

		// Configure builds to run whether a repository owner or
		// collaborator need to comment /gcbrun. Possible values:
		// ["COMMENTS_DISABLED", "COMMENTS_ENABLED",
		// "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
		comment_control?: string

		// If true, branches that do NOT match the git_ref will trigger a
		// build.
		invert_regex?: bool
	})

	_#defs: "/$defs/bitbucket_server_trigger_config/$defs/push": close({
		// Regex of branches to match. Specify only one of branch or tag.
		branch?: string

		// When true, only trigger a build if the revision regex does NOT
		// match the gitRef regex.
		invert_regex?: bool

		// Regex of tags to match. Specify only one of branch or tag.
		tag?: string
	})

	_#defs: "/$defs/build/$defs/artifacts": close({
		maven_artifacts?: matchN(1, [_#defs."/$defs/build/$defs/artifacts/$defs/maven_artifacts", [..._#defs."/$defs/build/$defs/artifacts/$defs/maven_artifacts"]])
		npm_packages?: matchN(1, [_#defs."/$defs/build/$defs/artifacts/$defs/npm_packages", [..._#defs."/$defs/build/$defs/artifacts/$defs/npm_packages"]])
		objects?: matchN(1, [_#defs."/$defs/build/$defs/artifacts/$defs/objects", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/artifacts/$defs/objects"]])
		python_packages?: matchN(1, [_#defs."/$defs/build/$defs/artifacts/$defs/python_packages", [..._#defs."/$defs/build/$defs/artifacts/$defs/python_packages"]])

		// A list of images to be pushed upon the successful completion of
		// all build steps.
		//
		// The images will be pushed using the builder service account's
		// credentials.
		//
		// The digests of the pushed images will be stored in the Build
		// resource's results field.
		//
		// If any of the images fail to be pushed, the build is marked
		// FAILURE.
		images?: [...string]
	})

	_#defs: "/$defs/build/$defs/artifacts/$defs/maven_artifacts": close({
		// Maven artifactId value used when uploading the artifact to
		// Artifact Registry.
		artifact_id?: string

		// Maven groupId value used when uploading the artifact to
		// Artifact Registry.
		group_id?: string

		// Path to an artifact in the build's workspace to be uploaded to
		// Artifact Registry. This can be either an absolute path, e.g.
		// /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative
		// path from /workspace, e.g.
		// my-app/target/my-app-1.0.SNAPSHOT.jar.
		path?: string

		// Artifact Registry repository, in the form
		// "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY"
		//
		// Artifact in the workspace specified by path will be uploaded to
		// Artifact Registry with this location as a prefix.
		repository?: string

		// Maven version value used when uploading the artifact to
		// Artifact Registry.
		version?: string
	})

	_#defs: "/$defs/build/$defs/artifacts/$defs/npm_packages": close({
		// Path to the package.json. e.g. workspace/path/to/package
		package_path?: string

		// Artifact Registry repository, in the form
		// "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY"
		//
		// Npm package in the workspace specified by path will be zipped
		// and uploaded to Artifact Registry with this location as a
		// prefix.
		repository?: string
	})

	_#defs: "/$defs/build/$defs/artifacts/$defs/objects": close({
		// Cloud Storage bucket and optional object path, in the form
		// "gs://bucket/path/to/somewhere/".
		//
		// Files in the workspace matching any path pattern will be
		// uploaded to Cloud Storage with
		// this location as a prefix.
		location?: string

		// Path globs used to match files in the build's workspace.
		paths?: [...string]

		// Output only. Stores timing information for pushing all artifact
		// objects.
		timing?: [...close({
			end_time?:   string
			start_time?: string
		})]
	})

	_#defs: "/$defs/build/$defs/artifacts/$defs/python_packages": close({
		// Path globs used to match files in the build's workspace. For
		// Python/ Twine, this is usually dist/*, and sometimes
		// additionally an .asc file.
		paths?: [...string]

		// Artifact Registry repository, in the form
		// "https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY"
		//
		// Files in the workspace matching any path pattern will be
		// uploaded to Artifact Registry with this location as a prefix.
		repository?: string
	})

	_#defs: "/$defs/build/$defs/available_secrets": close({
		secret_manager!: matchN(1, [_#defs."/$defs/build/$defs/available_secrets/$defs/secret_manager", [_, ...] & [..._#defs."/$defs/build/$defs/available_secrets/$defs/secret_manager"]])
	})

	_#defs: "/$defs/build/$defs/available_secrets/$defs/secret_manager": close({
		// Environment variable name to associate with the secret. Secret
		// environment
		// variables must be unique across all of a build's secrets, and
		// must be used
		// by at least one build step.
		env!: string

		// Resource name of the SecretVersion. In format:
		// projects/*/secrets/*/versions/*
		version_name!: string
	})

	_#defs: "/$defs/build/$defs/options": close({
		// Requested disk size for the VM that runs the build. Note that
		// this is NOT "disk free";
		// some of the space will be used by the operating system and
		// build utilities.
		// Also note that this is the minimum disk size that will be
		// allocated for the build --
		// the build may run with a larger disk than requested. At
		// present, the maximum disk size
		// is 1000GB; builds that request more than the maximum are
		// rejected with an error.
		disk_size_gb?: number

		// Option to specify whether or not to apply bash style string
		// operations to the substitutions.
		//
		// NOTE this is always enabled for triggered builds and cannot be
		// overridden in the build configuration file.
		dynamic_substitutions?: bool

		// A list of global environment variable definitions that will
		// exist for all build steps
		// in this build. If a variable is defined in both globally and in
		// a build step,
		// the variable will use the build step value.
		//
		// The elements are of the form "KEY=VALUE" for the environment
		// variable "KEY" being given the value "VALUE".
		env?: [...string]

		// Option to define build log streaming behavior to Google Cloud
		// Storage. Possible values: ["STREAM_DEFAULT", "STREAM_ON",
		// "STREAM_OFF"]
		log_streaming_option?: string

		// Option to specify the logging mode, which determines if and
		// where build logs are stored. Possible values:
		// ["LOGGING_UNSPECIFIED", "LEGACY", "GCS_ONLY",
		// "STACKDRIVER_ONLY", "CLOUD_LOGGING_ONLY", "NONE"]
		logging?: string

		// Compute Engine machine type on which to run the build.
		machine_type?: string

		// Requested verifiability options. Possible values:
		// ["NOT_VERIFIED", "VERIFIED"]
		requested_verify_option?: string

		// A list of global environment variables, which are encrypted
		// using a Cloud Key Management
		// Service crypto key. These values must be specified in the
		// build's Secret. These variables
		// will be available to all build steps in this build.
		secret_env?: [...string]
		volumes?: matchN(1, [_#defs."/$defs/build/$defs/options/$defs/volumes", [..._#defs."/$defs/build/$defs/options/$defs/volumes"]])

		// Requested hash for SourceProvenance. Possible values: ["NONE",
		// "SHA256", "MD5"]
		source_provenance_hash?: [...string]

		// Option to specify behavior when there is an error in the
		// substitution checks.
		//
		// NOTE this is always set to ALLOW_LOOSE for triggered builds and
		// cannot be overridden
		// in the build configuration file. Possible values:
		// ["MUST_MATCH", "ALLOW_LOOSE"]
		substitution_option?: string

		// Option to specify a WorkerPool for the build. Format
		// projects/{project}/workerPools/{workerPool}
		//
		// This field is experimental.
		worker_pool?: string
	})

	_#defs: "/$defs/build/$defs/options/$defs/volumes": close({
		// Name of the volume to mount.
		//
		// Volume names must be unique per build step and must be valid
		// names for Docker volumes.
		// Each named volume must be used by at least two build steps.
		name?: string

		// Path at which to mount the volume.
		//
		// Paths must be absolute and cannot conflict with other volume
		// paths on the same
		// build step or with certain reserved volume paths.
		path?: string
	})

	_#defs: "/$defs/build/$defs/secret": close({
		// Cloud KMS key name to use to decrypt these envs.
		kms_key_name!: string

		// Map of environment variable name to its encrypted value.
		// Secret environment variables must be unique across all of a
		// build's secrets,
		// and must be used by at least one build step. Values can be at
		// most 64 KB in size.
		// There can be at most 100 secret values across all of a build's
		// secrets.
		secret_env?: [string]: string
	})

	_#defs: "/$defs/build/$defs/source": close({
		repo_source?: matchN(1, [_#defs."/$defs/build/$defs/source/$defs/repo_source", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/source/$defs/repo_source"]])
		storage_source?: matchN(1, [_#defs."/$defs/build/$defs/source/$defs/storage_source", list.MaxItems(1) & [..._#defs."/$defs/build/$defs/source/$defs/storage_source"]])
	})

	_#defs: "/$defs/build/$defs/source/$defs/repo_source": close({
		// Regex matching branches to build. Exactly one a of branch name,
		// tag, or commit SHA must be provided.
		// The syntax of the regular expressions accepted is the syntax
		// accepted by RE2 and
		// described at https://github.com/google/re2/wiki/Syntax
		branch_name?: string

		// Explicit commit SHA to build. Exactly one a of branch name,
		// tag, or commit SHA must be provided.
		commit_sha?: string

		// Directory, relative to the source root, in which to run the
		// build.
		// This must be a relative path. If a step's dir is specified and
		// is an absolute path,
		// this value is ignored for that step's execution.
		dir?: string

		// Only trigger a build if the revision regex does NOT match the
		// revision regex.
		invert_regex?: bool

		// ID of the project that owns the Cloud Source Repository.
		// If omitted, the project ID requesting the build is assumed.
		project_id?: string

		// Name of the Cloud Source Repository.
		repo_name!: string

		// Substitutions to use in a triggered build. Should only be used
		// with triggers.run
		substitutions?: [string]: string

		// Regex matching tags to build. Exactly one a of branch name,
		// tag, or commit SHA must be provided.
		// The syntax of the regular expressions accepted is the syntax
		// accepted by RE2 and
		// described at https://github.com/google/re2/wiki/Syntax
		tag_name?: string
	})

	_#defs: "/$defs/build/$defs/source/$defs/storage_source": close({
		// Google Cloud Storage bucket containing the source.
		bucket!: string

		// Google Cloud Storage generation for the object.
		// If the generation is omitted, the latest generation will be
		// used
		generation?: string

		// Google Cloud Storage object containing the source.
		// This object must be a gzipped archive file (.tar.gz) containing
		// source to build.
		object!: string
	})

	_#defs: "/$defs/build/$defs/step": close({
		// Allow this build step to fail without failing the entire build
		// if and
		// only if the exit code is one of the specified codes.
		//
		// If 'allowFailure' is also specified, this field will take
		// precedence.
		allow_exit_codes?: [...number]

		// Allow this build step to fail without failing the entire build.
		// If false, the entire build will fail if this step fails.
		// Otherwise, the
		// build will succeed, but this step will still have a failure
		// status.
		// Error information will be reported in the 'failureDetail'
		// field.
		//
		// 'allowExitCodes' takes precedence over this field.
		allow_failure?: bool

		// A list of arguments that will be presented to the step when it
		// is started.
		//
		// If the image used to run the step's container has an
		// entrypoint, the args
		// are used as arguments to that entrypoint. If the image does not
		// define an
		// entrypoint, the first element in args is used as the
		// entrypoint, and the
		// remainder will be used as arguments.
		args?: [...string]

		// Working directory to use when running this step's container.
		//
		// If this value is a relative path, it is relative to the build's
		// working
		// directory. If this value is absolute, it may be outside the
		// build's working
		// directory, in which case the contents of the path may not be
		// persisted
		// across build step executions, unless a 'volume' for that path
		// is specified.
		//
		// If the build specifies a 'RepoSource' with 'dir' and a step
		// with a
		// 'dir',
		// which specifies an absolute path, the 'RepoSource' 'dir' is
		// ignored
		// for the step's execution.
		dir?: string

		// Entrypoint to be used instead of the build step image's
		// default entrypoint.
		// If unset, the image's default entrypoint is used
		entrypoint?: string

		// A list of environment variable definitions to be used when
		// running a step.
		//
		// The elements are of the form "KEY=VALUE" for the environment
		// variable
		// "KEY" being given the value "VALUE".
		env?: [...string]

		// Unique identifier for this build step, used in 'wait_for' to
		// reference this build step as a dependency.
		id?: string

		// The name of the container image that will run this particular
		// build step.
		//
		// If the image is available in the host's Docker daemon's cache,
		// it will be
		// run directly. If not, the host will attempt to pull the image
		// first, using
		// the builder service account's credentials if necessary.
		//
		// The Docker daemon's cache will already have the latest versions
		// of all of
		// the officially supported build steps (see
		// https://github.com/GoogleCloudPlatform/cloud-builders
		// for images and examples).
		// The Docker daemon will also have cached many of the layers for
		// some popular
		// images, like "ubuntu", "debian", but they will be refreshed at
		// the time
		// you attempt to use them.
		//
		// If you built an image in a previous build step, it will be
		// stored in the
		// host's Docker daemon's cache and is available to use as the
		// name for a
		// later build step.
		name!: string

		// A shell script to be executed in the step.
		// When script is provided, the user cannot specify the entrypoint
		// or args.
		script?: string
		volumes?: matchN(1, [_#defs."/$defs/build/$defs/step/$defs/volumes", [..._#defs."/$defs/build/$defs/step/$defs/volumes"]])

		// A list of environment variables which are encrypted using
		// a Cloud Key
		// Management Service crypto key. These values must be specified
		// in
		// the build's 'Secret'.
		secret_env?: [...string]

		// Time limit for executing this build step. If not defined,
		// the step has no
		// time limit and will be allowed to continue to run until either
		// it
		// completes or the build itself times out.
		timeout?: string

		// Output only. Stores timing information for executing this
		// build step.
		timing?: string

		// The ID(s) of the step(s) that this build step depends on.
		//
		// This build step will not start until all the build steps in
		// 'wait_for'
		// have completed successfully. If 'wait_for' is empty, this build
		// step
		// will start when all previous build steps in the 'Build.Steps'
		// list
		// have completed successfully.
		wait_for?: [...string]
	})

	_#defs: "/$defs/build/$defs/step/$defs/volumes": close({
		// Name of the volume to mount.
		//
		// Volume names must be unique per build step and must be valid
		// names for
		// Docker volumes. Each named volume must be used by at least two
		// build steps.
		name!: string

		// Path at which to mount the volume.
		//
		// Paths must be absolute and cannot conflict with other volume
		// paths on
		// the same build step or with certain reserved volume paths.
		path!: string
	})

	_#defs: "/$defs/developer_connect_event_config/$defs/pull_request": close({
		// Regex of branches to match.
		branch?: string

		// Configure builds to run whether a repository owner or
		// collaborator need to comment '/gcbrun'. Possible values:
		// ["COMMENTS_DISABLED", "COMMENTS_ENABLED",
		// "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
		comment_control?: string

		// If true, branches that do NOT match the git_ref will trigger a
		// build.
		invert_regex?: bool
	})

	_#defs: "/$defs/developer_connect_event_config/$defs/push": close({
		// Regex of branches to match.
		branch?: string

		// If true, only trigger a build if the revision regex does NOT
		// match the git_ref regex.
		invert_regex?: bool

		// Regex of tags to match.
		tag?: string
	})

	_#defs: "/$defs/github/$defs/pull_request": close({
		// Regex of branches to match.
		branch!: string

		// Whether to block builds on a "/gcbrun" comment from a
		// repository owner or collaborator. Possible values:
		// ["COMMENTS_DISABLED", "COMMENTS_ENABLED",
		// "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
		comment_control?: string

		// If true, branches that do NOT match the git_ref will trigger a
		// build.
		invert_regex?: bool
	})

	_#defs: "/$defs/github/$defs/push": close({
		// Regex of branches to match. Specify only one of branch or tag.
		branch?: string

		// When true, only trigger a build if the revision regex does NOT
		// match the git_ref regex.
		invert_regex?: bool

		// Regex of tags to match. Specify only one of branch or tag.
		tag?: string
	})

	_#defs: "/$defs/repository_event_config/$defs/pull_request": close({
		// Regex of branches to match.
		//
		// The syntax of the regular expressions accepted is the syntax
		// accepted by
		// RE2 and described at https://github.com/google/re2/wiki/Syntax
		branch?: string

		// Configure builds to run whether a repository owner or
		// collaborator need to comment '/gcbrun'. Possible values:
		// ["COMMENTS_DISABLED", "COMMENTS_ENABLED",
		// "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"]
		comment_control?: string

		// If true, branches that do NOT match the git_ref will trigger a
		// build.
		invert_regex?: bool
	})

	_#defs: "/$defs/repository_event_config/$defs/push": close({
		// Regex of branches to match.
		//
		// The syntax of the regular expressions accepted is the syntax
		// accepted by
		// RE2 and described at https://github.com/google/re2/wiki/Syntax
		branch?: string

		// If true, only trigger a build if the revision regex does NOT
		// match the git_ref regex.
		invert_regex?: bool

		// Regex of tags to match.
		//
		// The syntax of the regular expressions accepted is the syntax
		// accepted by
		// RE2 and described at https://github.com/google/re2/wiki/Syntax
		tag?: string
	})
}
