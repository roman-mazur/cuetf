package res

import "list"

#google_bigquery_analytics_hub_listing_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_analytics_hub_listing_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		data_exchange_id!: string
		etag?:             string
		id?:               string
		listing_id!:       string
		location?:         string
		member!:           string
		project?:          string
		role!:             string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
