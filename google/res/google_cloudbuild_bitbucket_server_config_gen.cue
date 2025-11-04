package res

import "list"

#google_cloudbuild_bitbucket_server_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloudbuild_bitbucket_server_config")
	close({
		// Immutable. API Key that will be attached to webhook. Once this
		// field has been set, it cannot be changed.
		// Changing this field will result in deleting/ recreating the
		// resource.
		api_key!: string

		// The ID to use for the BitbucketServerConfig, which will become
		// the final component of the BitbucketServerConfig's resource
		// name.
		config_id!: string

		// Immutable. The URI of the Bitbucket Server host. Once this
		// field has been set, it cannot be changed.
		// If you need to change it, please create another
		// BitbucketServerConfig.
		host_uri!: string

		// The location of this bitbucket server config.
		location!: string

		// The resource name for the config.
		name?: string
		id?:   string

		// The network to be used when reaching out to the Bitbucket
		// Server instance. The VPC network must be enabled for private
		// service connection.
		// This should be set if the Bitbucket Server instance is hosted
		// on-premises and not reachable by public internet. If this
		// field is left empty,
		// no network peering will occur and calls to the Bitbucket Server
		// instance will be made over the public internet. Must be in the
		// format
		// projects/{project}/global/networks/{network}, where {project}
		// is a project number or id and {network} is the name of a VPC
		// network in the project.
		peered_network?: string

		// SSL certificate to use for requests to Bitbucket Server. The
		// format should be PEM format but the extension can be one of
		// .pem, .cer, or .crt.
		ssl_ca?: string

		// Username of the account Cloud Build will use on Bitbucket
		// Server.
		username!: string
		connected_repositories?: matchN(1, [#connected_repositories, [...#connected_repositories]])
		secrets!: matchN(1, [#secrets, list.MaxItems(1) & [_, ...] & [...#secrets]])
		timeouts?: #timeouts
		project?:  string

		// Output only. UUID included in webhook requests. The UUID is
		// used to look up the corresponding config.
		webhook_key?: string
	})

	#connected_repositories: close({
		// Identifier for the project storing the repository.
		project_key!: string

		// Identifier for the repository.
		repo_slug!: string
	})

	#secrets: close({
		// The resource name for the admin access token's secret version.
		admin_access_token_version_name!: string

		// The resource name for the read access token's secret version.
		read_access_token_version_name!: string

		// Immutable. The resource name for the webhook secret's secret
		// version. Once this field has been set, it cannot be changed.
		// Changing this field will result in deleting/ recreating the
		// resource.
		webhook_secret_version_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
