package res

import "list"

google_dataform_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_repository")
	close({
		git_remote_settings?: matchN(1, [#git_remote_settings, list.MaxItems(1) & [...#git_remote_settings]])
		timeouts?: #timeouts
		workspace_compilation_overrides?: matchN(1, [#workspace_compilation_overrides, list.MaxItems(1) & [...#workspace_compilation_overrides]])

		// This field uses a custom implementation please refer to documentation under
		// /hashicorp/terraform-provider-google-beta/website/docs/r/dataform_repository.html.markdown
		// for specifics
		deletion_policy?: string

		// Optional. The repository's user-friendly name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Optional. The reference to a KMS encryption key. If provided, it will be used
		// to encrypt user data in the repository and all child resources.
		// It is not possible to add or update the encryption key after the repository
		// is created. Example
		// projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
		kms_key_name?: string

		// Optional. Repository user labels.
		// An object containing a list of "key": value pairs. Example: { "name":
		// "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The repository's name.
		name!: string

		// Optional. The name of the Secret Manager secret version to be used to
		// interpolate variables into the .npmrc file for package installation
		// operations. Must be in the format projects/*/secrets/*/versions/*. The file
		// itself must be in a JSON format.
		npmrc_environment_variables_secret_version?: string

		// A reference to the region
		region?:  string
		project?: string

		// The service account to run workflow invocations under.
		service_account?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#git_remote_settings: close({
		ssh_authentication_config?: matchN(1, [_#defs."/$defs/git_remote_settings/$defs/ssh_authentication_config", list.MaxItems(1) & [..._#defs."/$defs/git_remote_settings/$defs/ssh_authentication_config"]])

		// The name of the Secret Manager secret version to use as an authentication
		// token for Git operations. This secret is for assigning with HTTPS only(for
		// SSH use 'ssh_authentication_config'). Must be in the format
		// projects/*/secrets/*/versions/*.
		authentication_token_secret_version?: string

		// The Git remote's default branch name.
		default_branch!: string

		// The name of the Developer Connect GitRepositoryLink to use for machine
		// credentials. Must be in the format
		// projects/*/locations/*/connections/*/gitRepositoryLinks/*.
		git_repository_link?: string

		// Indicates the status of the Git access token.
		// https://cloud.google.com/dataform/reference/rest/v1/projects.locations.repositories#TokenStatus
		token_status?: string

		// The Git remote's URL.
		url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#workspace_compilation_overrides: close({
		// The default database (Google Cloud project ID).
		default_database?: string

		// The suffix that should be appended to all schema (BigQuery dataset ID) names.
		schema_suffix?: string

		// The prefix that should be prepended to all table names.
		table_prefix?: string
	})

	_#defs: "/$defs/git_remote_settings/$defs/ssh_authentication_config": close({
		// Content of a public SSH key to verify an identity of a remote Git host.
		host_public_key!: string

		// The name of the Secret Manager secret version to use as a ssh private key for
		// Git operations. Must be in the format projects/*/secrets/*/versions/*.
		user_private_key_secret_version!: string
	})
}
