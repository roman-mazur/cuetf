package res

import "list"

#google_cloudbuildv2_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloudbuildv2_connection")
	close({
		// Allows clients to store small amounts of arbitrary data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. Server assigned timestamp for when the connection
		// was created.
		create_time?: string

		// If disabled is set to true, functionality is disabled for this
		// connection. Repository based API methods and webhooks
		// processing for repositories in this connection will be
		// disabled.
		disabled?: bool

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// This checksum is computed by the server based on the value of
		// other fields, and may be sent on update and delete requests to
		// ensure the client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Output only. Installation state of the Connection.
		installation_state?: [...close({
			action_uri?: string
			message?:    string
			stage?:      string
		})]
		bitbucket_cloud_config?: matchN(1, [#bitbucket_cloud_config, list.MaxItems(1) & [...#bitbucket_cloud_config]])

		// The location for the resource
		location!: string
		bitbucket_data_center_config?: matchN(1, [#bitbucket_data_center_config, list.MaxItems(1) & [...#bitbucket_data_center_config]])
		github_config?: matchN(1, [#github_config, list.MaxItems(1) & [...#github_config]])

		// Immutable. The resource name of the connection.
		name!: string
		github_enterprise_config?: matchN(1, [#github_enterprise_config, list.MaxItems(1) & [...#github_enterprise_config]])
		gitlab_config?: matchN(1, [#gitlab_config, list.MaxItems(1) & [...#gitlab_config]])
		timeouts?: #timeouts
		project?:  string

		// Output only. Set to true when the connection is being set up or
		// updated in the background.
		reconciling?: bool

		// Output only. Server assigned timestamp for when the connection
		// was updated.
		update_time?: string
	})

	#bitbucket_cloud_config: close({
		authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_cloud_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_cloud_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_cloud_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_cloud_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret used to verify webhook events, formatted as
		// 'projects/*/secrets/*/versions/*'.
		webhook_secret_secret_version!: string

		// The Bitbucket Cloud Workspace ID to be connected to Google
		// Cloud Platform.
		workspace!: string
	})

	#bitbucket_data_center_config: close({
		// The URI of the Bitbucket Data Center host this connection is
		// for.
		host_uri!: string

		// Output only. Version of the Bitbucket Data Center running on
		// the 'host_uri'.
		server_version?: string

		// SSL certificate to use for requests to the Bitbucket Data
		// Center.
		ssl_ca?: string
		authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_data_center_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_data_center_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_data_center_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_data_center_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret used to verify webhook events, formatted as
		// 'projects/*/secrets/*/versions/*'.
		webhook_secret_secret_version!: string
		service_directory_config?: matchN(1, [_#defs."/$defs/bitbucket_data_center_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/bitbucket_data_center_config/$defs/service_directory_config"]])
	})

	#github_config: close({
		authorizer_credential?: matchN(1, [_#defs."/$defs/github_config/$defs/authorizer_credential", list.MaxItems(1) & [..._#defs."/$defs/github_config/$defs/authorizer_credential"]])

		// GitHub App installation id.
		app_installation_id?: number
	})

	#github_enterprise_config: close({
		// Id of the GitHub App created from the manifest.
		app_id?: number

		// ID of the installation of the GitHub App.
		app_installation_id?: number

		// The URL-friendly name of the GitHub App.
		app_slug?: string

		// Required. The URI of the GitHub Enterprise host this connection
		// is for.
		host_uri!: string

		// SecretManager resource containing the private key of the GitHub
		// App, formatted as 'projects/*/secrets/*/versions/*'.
		private_key_secret_version?: string

		// SSL certificate to use for requests to GitHub Enterprise.
		ssl_ca?: string
		service_directory_config?: matchN(1, [_#defs."/$defs/github_enterprise_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/github_enterprise_config/$defs/service_directory_config"]])

		// SecretManager resource containing the webhook secret of the
		// GitHub App, formatted as 'projects/*/secrets/*/versions/*'.
		webhook_secret_secret_version?: string
	})

	#gitlab_config: close({
		// The URI of the GitLab Enterprise host this connection is for.
		// If not specified, the default value is https://gitlab.com.
		host_uri?: string

		// Output only. Version of the GitLab Enterprise server running on
		// the 'host_uri'.
		server_version?: string

		// SSL certificate to use for requests to GitLab Enterprise.
		ssl_ca?: string
		authorizer_credential!: matchN(1, [_#defs."/$defs/gitlab_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gitlab_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/gitlab_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gitlab_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret of a GitLab Enterprise project, formatted as
		// 'projects/*/secrets/*/versions/*'.
		webhook_secret_secret_version!: string
		service_directory_config?: matchN(1, [_#defs."/$defs/gitlab_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/gitlab_config/$defs/service_directory_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bitbucket_cloud_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_cloud_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_data_center_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_data_center_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_data_center_config/$defs/service_directory_config": close({
		// Required. The Service Directory service name. Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})

	_#defs: "/$defs/github_config/$defs/authorizer_credential": close({
		// A SecretManager resource containing the OAuth token that
		// authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		oauth_token_secret_version?: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/github_enterprise_config/$defs/service_directory_config": close({
		// Required. The Service Directory service name. Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})

	_#defs: "/$defs/gitlab_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/gitlab_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes the Cloud Build connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated to this token.
		username?: string
	})

	_#defs: "/$defs/gitlab_config/$defs/service_directory_config": close({
		// Required. The Service Directory service name. Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})
}
