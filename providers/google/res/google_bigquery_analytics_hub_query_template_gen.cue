package res

import "list"

google_bigquery_analytics_hub_query_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_analytics_hub_query_template")
	close({
		routine?: matchN(1, [#routine, list.MaxItems(1) & [...#routine]])
		timeouts?: #timeouts

		// Timestamp when the QueryTemplate was created.
		create_time?: string

		// The ID of the data exchange. Must contain only Unicode letters, numbers
		// (0-9), underscores (_). Should not use characters that require URL-escaping,
		// or characters outside of ASCII, spaces.
		data_exchange_id!: string

		// This field uses a custom implementation please refer to documentation under
		// /hashicorp/terraform-provider-google-beta/website/docs/r/bigquery_analytics_hub_query_template.html.markdown
		// for specifics
		deletion_policy?: string

		// Short description of the QueryTemplate. The description must not contain
		// Unicode non-characters and C0 and C1 control codes except tabs,
		// new lines, carriage returns, and page breaks.
		// Default value is an empty string. Max length: 2000 bytes.
		description?: string

		// Human-readable display name of the QueryTemplate. The display name must
		// contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
		// spaces ( ), ampersands (&) and can't start or end with spaces. Default
		// value is an empty string.
		display_name!: string

		// Documentation describing the QueryTemplate.
		documentation?: string
		id?:            string

		// The name of the location this data exchange query template.
		location!: string

		// The resource name of the QueryTemplate. e.g.
		// 'projects/myproject/locations/us/dataExchanges/123/queryTemplates/456'
		name?: string

		// Email or URL of the primary point of contact of the QueryTemplate.
		primary_contact?: string

		// Unique QueryTemplate ID.
		query_template_id!: string
		project?:           string

		// The QueryTemplate lifecycle state.
		state?: string

		// If set to 'true', the QueryTemplate will be submitted for approval and cannot
		// be updated afterwards. This is a one-time action.
		submit?: bool

		// Timestamp when the QueryTemplate was last modified.
		update_time?: string
	})

	#routine: close({
		// SQL query logic.
		definition_body?: string

		// Type of routine (e.g., TABLE_VALUED_FUNCTION). Possible values: ["TABLE_VALUED_FUNCTION"]
		routine_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
