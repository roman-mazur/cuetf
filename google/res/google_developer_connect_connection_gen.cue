package res

import "list"

#google_developer_connect_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_developer_connect_connection")
	close({
		// Optional. Allows clients to store small amounts of arbitrary
		// data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string
		bitbucket_cloud_config?: matchN(1, [#bitbucket_cloud_config, list.MaxItems(1) & [...#bitbucket_cloud_config]])

		// Required. Id of the requesting object
		// If auto-generating Id server-side, remove this field and
		// connection_id from the method_signature of Create RPC
		connection_id!: string

		// Output only. [Output only] Create timestamp
		create_time?: string

		// Output only. [Output only] Delete timestamp
		delete_time?: string

		// Optional. If disabled is set to true, functionality is disabled
		// for this connection.
		// Repository based API methods and webhooks processing for
		// repositories in
		// this connection will be disabled.
		disabled?: bool

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. This checksum is computed by the server based on the
		// value of other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Describes stage and necessary actions to be taken by the
		// user to complete the installation. Used for GitHub and GitHub
		// Enterprise
		// based connections.
		installation_state?: [...close({
			action_uri?: string
			message?:    string
			stage?:      string
		})]

		// Optional. Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		bitbucket_data_center_config?: matchN(1, [#bitbucket_data_center_config, list.MaxItems(1) & [...#bitbucket_data_center_config]])
		crypto_key_config?: matchN(1, [#crypto_key_config, list.MaxItems(1) & [...#crypto_key_config]])
		github_config?: matchN(1, [#github_config, list.MaxItems(1) & [...#github_config]])
		github_enterprise_config?: matchN(1, [#github_enterprise_config, list.MaxItems(1) & [...#github_enterprise_config]])
		gitlab_config?: matchN(1, [#gitlab_config, list.MaxItems(1) & [...#gitlab_config]])
		gitlab_enterprise_config?: matchN(1, [#gitlab_enterprise_config, list.MaxItems(1) & [...#gitlab_enterprise_config]])
		timeouts?: #timeouts

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The resource name of the connection, in the format
		// 'projects/{project}/locations/{location}/connections/{connection_id}'.
		name?: string

		// Output only. Set to true when the connection is being set up or
		// updated in the
		// background.
		reconciling?: bool
		project?:     string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. A system-assigned unique identifier for a the
		// GitRepositoryLink.
		uid?: string

		// Output only. [Output only] Update timestamp
		update_time?: string
	})

	#bitbucket_cloud_config: close({
		authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_cloud_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_cloud_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_cloud_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_cloud_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret used to verify webhook
		// events, formatted as 'projects/*/secrets/*/versions/*'. This is
		// used to
		// validate and create webhooks.
		webhook_secret_secret_version!: string

		// Required. The Bitbucket Cloud Workspace ID to be connected to
		// Google Cloud Platform.
		workspace!: string
	})

	#bitbucket_data_center_config: close({
		// Required. The URI of the Bitbucket Data Center host this
		// connection is for.
		host_uri!: string

		// Output only. Version of the Bitbucket Data Center server
		// running on the 'host_uri'.
		server_version?: string

		// Optional. SSL certificate authority to trust when making
		// requests to Bitbucket Data
		// Center.
		ssl_ca_certificate?: string
		authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_data_center_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_data_center_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/bitbucket_data_center_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bitbucket_data_center_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret used to verify webhook
		// events, formatted as 'projects/*/secrets/*/versions/*'. This is
		// used to
		// validate webhooks.
		webhook_secret_secret_version!: string
		service_directory_config?: matchN(1, [_#defs."/$defs/bitbucket_data_center_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/bitbucket_data_center_config/$defs/service_directory_config"]])
	})

	#crypto_key_config: close({
		// Required. The name of the key which is used to encrypt/decrypt
		// customer data. For key
		// in Cloud KMS, the key should be in the format of
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'.
		key_reference!: string
	})

	#github_config: close({
		// Optional. GitHub App installation id.
		app_installation_id?: string
		authorizer_credential?: matchN(1, [_#defs."/$defs/github_config/$defs/authorizer_credential", list.MaxItems(1) & [..._#defs."/$defs/github_config/$defs/authorizer_credential"]])

		// Required. Immutable. The GitHub Application that was installed
		// to the GitHub user or
		// organization.
		// Possible values:
		// GIT_HUB_APP_UNSPECIFIED
		// DEVELOPER_CONNECT
		// FIREBASE
		github_app!: string

		// Output only. The URI to navigate to in order to manage the
		// installation associated
		// with this GitHubConfig.
		installation_uri?: string
	})

	#github_enterprise_config: close({
		// Optional. ID of the GitHub App created from the manifest.
		app_id?: string

		// Optional. ID of the installation of the GitHub App.
		app_installation_id?: string

		// Output only. The URL-friendly name of the GitHub App.
		app_slug?: string

		// Required. The URI of the GitHub Enterprise host this connection
		// is for.
		host_uri!: string

		// Output only. The URI to navigate to in order to manage the
		// installation associated
		// with this GitHubEnterpriseConfig.
		installation_uri?: string

		// Optional. SecretManager resource containing the private key of
		// the GitHub App,
		// formatted as 'projects/*/secrets/*/versions/*'.
		private_key_secret_version?: string

		// Output only. GitHub Enterprise version installed at the
		// host_uri.
		server_version?: string
		service_directory_config?: matchN(1, [_#defs."/$defs/github_enterprise_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/github_enterprise_config/$defs/service_directory_config"]])

		// Optional. SSL certificate to use for requests to GitHub
		// Enterprise.
		ssl_ca_certificate?: string

		// Optional. SecretManager resource containing the webhook secret
		// of the GitHub App,
		// formatted as 'projects/*/secrets/*/versions/*'.
		webhook_secret_secret_version?: string
	})

	#gitlab_config: close({
		authorizer_credential!: matchN(1, [_#defs."/$defs/gitlab_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gitlab_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/gitlab_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gitlab_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret of a GitLab project,
		// formatted as 'projects/*/secrets/*/versions/*'. This is used to
		// validate
		// webhooks.
		webhook_secret_secret_version!: string
	})

	#gitlab_enterprise_config: close({
		// Required. The URI of the GitLab Enterprise host this connection
		// is for.
		host_uri!: string

		// Output only. Version of the GitLab Enterprise server running on
		// the 'host_uri'.
		server_version?: string

		// Optional. SSL Certificate Authority certificate to use for
		// requests to GitLab
		// Enterprise instance.
		ssl_ca_certificate?: string
		authorizer_credential!: matchN(1, [_#defs."/$defs/gitlab_enterprise_config/$defs/authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gitlab_enterprise_config/$defs/authorizer_credential"]])
		read_authorizer_credential!: matchN(1, [_#defs."/$defs/gitlab_enterprise_config/$defs/read_authorizer_credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/gitlab_enterprise_config/$defs/read_authorizer_credential"]])

		// Required. Immutable. SecretManager resource containing the
		// webhook secret of a GitLab project,
		// formatted as 'projects/*/secrets/*/versions/*'. This is used to
		// validate
		// webhooks.
		webhook_secret_secret_version!: string
		service_directory_config?: matchN(1, [_#defs."/$defs/gitlab_enterprise_config/$defs/service_directory_config", list.MaxItems(1) & [..._#defs."/$defs/gitlab_enterprise_config/$defs/service_directory_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bitbucket_cloud_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_cloud_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_data_center_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_data_center_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/bitbucket_data_center_config/$defs/service_directory_config": close({
		// Required. The Service Directory service name.
		// Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})

	_#defs: "/$defs/github_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the OAuth token
		// that authorizes
		// the connection. Format: 'projects/*/secrets/*/versions/*'.
		oauth_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/github_enterprise_config/$defs/service_directory_config": close({
		// Required. The Service Directory service name.
		// Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})

	_#defs: "/$defs/gitlab_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/gitlab_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/gitlab_enterprise_config/$defs/authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/gitlab_enterprise_config/$defs/read_authorizer_credential": close({
		// Required. A SecretManager resource containing the user token
		// that authorizes
		// the Developer Connect connection. Format:
		// 'projects/*/secrets/*/versions/*'.
		user_token_secret_version!: string

		// Output only. The username associated with this token.
		username?: string
	})

	_#defs: "/$defs/gitlab_enterprise_config/$defs/service_directory_config": close({
		// Required. The Service Directory service name.
		// Format:
		// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
		service!: string
	})
}
