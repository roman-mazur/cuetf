package res

import "list"

#azurerm_sentinel_metadata: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_sentinel_metadata")
	close({
		content_id!:             string
		content_schema_version?: string
		custom_version?:         string
		dependency?:             string
		first_publish_date?:     string
		icon_id?:                string
		id?:                     string
		kind!:                   string
		last_publish_date?:      string
		name!:                   string
		parent_id!:              string
		author?: matchN(1, [#author, list.MaxItems(1) & [...#author]])
		category?: matchN(1, [#category, list.MaxItems(1) & [...#category]])
		preview_images?: [...string]
		preview_images_dark?: [...string]
		providers?: [...string]
		threat_analysis_tactics?: [...string]
		threat_analysis_techniques?: [...string]
		version?:      string
		workspace_id!: string
		source?: matchN(1, [#source, list.MaxItems(1) & [...#source]])
		support?: matchN(1, [#support, list.MaxItems(1) & [...#support]])
		timeouts?: #timeouts
	})

	#author: close({
		email?: string
		link?:  string
		name?:  string
	})

	#category: close({
		domains?: [...string]
		verticals?: [...string]
	})

	#source: close({
		id?:   string
		kind!: string
		name?: string
	})

	#support: close({
		email?: string
		link?:  string
		name?:  string
		tier!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
