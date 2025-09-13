package res

import "list"

#google_cloud_asset_folder_feed: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_asset_folder_feed")
	close({
		// A list of the full names of the assets to receive updates. You
		// must specify either or both of
		// assetNames and assetTypes. Only asset updates matching
		// specified assetNames and assetTypes are
		// exported to the feed. For example:
		// //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
		// See
		// https://cloud.google.com/apis/design/resourceNames#fullResourceName
		// for more info.
		asset_names?: [...string]

		// A list of types of the assets to receive updates. You must
		// specify either or both of assetNames
		// and assetTypes. Only asset updates matching specified
		// assetNames and assetTypes are exported to
		// the feed. For example: "compute.googleapis.com/Disk"
		// See
		// https://cloud.google.com/asset-inventory/docs/supported-asset-types
		// for a list of all
		// supported asset types.
		asset_types?: [...string]

		// The project whose identity will be used when sending messages
		// to the
		// destination pubsub topic. It also specifies the project for API
		// enablement check, quota, and billing.
		billing_project!: string

		// Asset content type. If not specified, no content but the asset
		// name and type will be returned. Possible values:
		// ["CONTENT_TYPE_UNSPECIFIED", "RESOURCE", "IAM_POLICY",
		// "ORG_POLICY", "OS_INVENTORY", "ACCESS_POLICY"]
		content_type?: string

		// This is the client-assigned asset feed identifier and it needs
		// to be unique under a specific parent.
		feed_id!: string

		// The folder this feed should be created in.
		folder!: string
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		feed_output_config?: matchN(1, [#feed_output_config, list.MaxItems(1) & [_, ...] & [...#feed_output_config]])

		// The ID of the folder where this feed has been created. Both
		// [FOLDER_NUMBER]
		// and folders/[FOLDER_NUMBER] are accepted.
		folder_id?: string
		timeouts?:  #timeouts
		id?:        string

		// The format will be
		// folders/{folder_number}/feeds/{client-assigned_feed_identifier}.
		name?: string
	})

	#condition: close({
		// Description of the expression. This is a longer text which
		// describes the expression,
		// e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file
		// name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		// This can be used e.g. in UIs which allow to enter the
		// expression.
		title?: string
	})

	#feed_output_config: close({
		pubsub_destination?: matchN(1, [_#defs."/$defs/feed_output_config/$defs/pubsub_destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/feed_output_config/$defs/pubsub_destination"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/feed_output_config/$defs/pubsub_destination": close({
		// Destination on Cloud Pubsub topic.
		topic!: string
	})
}
