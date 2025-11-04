package res

import "list"

#google_vertex_ai_feature_online_store_featureview: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_feature_online_store_featureview")
	close({
		// The timestamp of when the featureOnlinestore was created in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up
		// to nine fractional digits.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the FeatureOnlineStore to use for the featureview.
		feature_online_store!: string

		// A set of key/value label pairs to assign to this FeatureView.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Name of the FeatureView. This value may be up to 60 characters,
		// and valid characters are [a-z0-9_]. The first character cannot
		// be a number.
		name?: string
		big_query_source?: matchN(1, [#big_query_source, list.MaxItems(1) & [...#big_query_source]])
		project?: string
		feature_registry_source?: matchN(1, [#feature_registry_source, list.MaxItems(1) & [...#feature_registry_source]])
		sync_config?: matchN(1, [#sync_config, list.MaxItems(1) & [...#sync_config]])
		timeouts?: #timeouts

		// The region for the resource. It should be the same as the
		// featureonlinestore region.
		region?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the featureOnlinestore was last updated
		// in RFC3339 UTC "Zulu" format, with nanosecond resolution and
		// up to nine fractional digits.
		update_time?: string
	})

	#big_query_source: close({
		// Columns to construct entityId / row keys. Start by supporting 1
		// only.
		entity_id_columns!: [...string]

		// The BigQuery view URI that will be materialized on each sync
		// trigger based on FeatureView.SyncConfig.
		uri!: string
	})

	#feature_registry_source: close({
		feature_groups!: matchN(1, [_#defs."/$defs/feature_registry_source/$defs/feature_groups", [_, ...] & [..._#defs."/$defs/feature_registry_source/$defs/feature_groups"]])

		// The project number of the parent project of the feature Groups.
		project_number?: string
	})

	#sync_config: close({
		// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch
		// scheduled runs.
		// To explicitly set a timezone to the cron tab, apply a prefix in
		// the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or
		// "TZ=${IANA_TIME_ZONE}".
		cron?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/feature_registry_source/$defs/feature_groups": close({
		// Identifier of the feature group.
		feature_group_id!: string

		// Identifiers of features under the feature group.
		feature_ids!: [...string]
	})
}
