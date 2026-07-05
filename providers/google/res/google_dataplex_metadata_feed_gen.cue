package res

import "list"

google_dataplex_metadata_feed: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_metadata_feed")
	close({
		filters?: matchN(1, [#filters, list.MaxItems(1) & [...#filters]])
		scope!: matchN(1, [#scope, list.MaxItems(1) & [_, ...] & [...#scope]])
		timeouts?: #timeouts

		// The time when the feed was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// User-defined labels.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// The metadata job ID. If not provided, a unique ID is generated with the prefix metadata-job-.
		metadata_feed_id!: string

		// Identifier. The resource name of the metadata feed, in the format
		// projects/{project_id_or_number}/locations/{location_id}/metadataFeeds/{metadata_feed_id}.
		name?: string

		// The pubsub topic that you want the metadata feed messages to publish to.
		// Please grant Dataplex service account the permission to publish messages to
		// the topic. The service account is:
		// service-{PROJECT_NUMBER}@gcp-sa-dataplex.iam.gserviceaccount.com.
		pubsub_topic?: string
		project?:      string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A system-generated, globally unique ID for the metadata job. If the metadata
		// job is deleted and then re-created with the same name, this ID is different.
		uid?: string

		// The time when the feed was updated.
		update_time?: string
	})

	#filters: close({
		// The aspect types that you want to listen to. Depending on how the aspect is
		// attached to the entry, in the format:
		// projects/{project_id_or_number}/locations/{location}/aspectTypes/{aspect_type_id}.
		aspect_types?: [...string]

		// The type of change that you want to listen to. If not specified, all changes are published.
		change_types?: [...string]

		// The entry types that you want to listen to, specified as relative resource
		// names in the format
		// projects/{project_id_or_number}/locations/{location}/entryTypes/{entry_type_id}.
		// Only entries that belong to the specified entry types are published.
		entry_types?: [...string]
	})

	#scope: close({
		// The entry groups whose entries you want to listen to. Must be in the format:
		// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}.
		entry_groups?: [...string]

		// Whether the metadata feed is at the organization-level.
		// If true, all changes happened to the entries in the same organization as the feed are published.
		// If false, you must specify a list of projects or a list of entry groups whose
		// entries you want to listen to.The default is false.
		organization_level?: bool

		// The projects whose entries you want to listen to. Must be in the same
		// organization as the feed. Must be in the format:
		// projects/{project_id_or_number}.
		projects?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
