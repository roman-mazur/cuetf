package res

import "list"

#google_developer_connect_account_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_developer_connect_account_connector")
	close({
		// Required. The ID to use for the AccountConnector, which will
		// become the final
		// component of the AccountConnector's resource name. Its format
		// should adhere
		// to https://google.aip.dev/122#resource-id-segments Names must
		// be unique
		// per-project per-location.
		account_connector_id!: string

		// Optional. Allows users to store small amounts of arbitrary
		// data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. The timestamp when the userConnection was created.
		create_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Optional. Labels as key value pairs
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the resource.
		location!: string

		// Identifier. The resource name of the userConnection, in the
		// format
		// 'projects/{project}/locations/{location}/accountConnectors/{account_connector_id}'.
		name?: string

		// Output only. Start OAuth flow by clicking on this URL.
		oauth_start_uri?: string
		provider_oauth_config?: matchN(1, [#provider_oauth_config, list.MaxItems(1) & [...#provider_oauth_config]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. The timestamp when the userConnection was updated.
		update_time?: string
	})

	#provider_oauth_config: close({
		// Required. User selected scopes to apply to the Oauth config
		// In the event of changing scopes, user records under
		// AccountConnector will
		// be deleted and users will re-auth again.
		scopes!: [...string]

		// List of providers that are owned by Developer Connect.
		//
		// Possible values:
		// GITHUB
		// GITLAB
		// GOOGLE
		// SENTRY
		// ROVO
		// NEW_RELIC
		// DATASTAX
		system_provider_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
