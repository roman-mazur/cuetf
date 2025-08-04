package res

import "list"

#aws_appstream_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appstream_stack")
	close({
		arn?: string
		access_endpoints?: matchN(1, [#access_endpoints, list.MaxItems(4) & [...#access_endpoints]])
		created_time?: string
		description?:  string
		display_name?: string
		embed_host_domains?: [...string]
		feedback_url?: string
		id?:           string
		application_settings?: matchN(1, [#application_settings, list.MaxItems(1) & [...#application_settings]])
		name!:         string
		redirect_url?: string
		region?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		storage_connectors?: matchN(1, [#storage_connectors, [...#storage_connectors]])
		streaming_experience_settings?: matchN(1, [#streaming_experience_settings, list.MaxItems(1) & [...#streaming_experience_settings]])
		user_settings?: matchN(1, [#user_settings, [...#user_settings]])
	})

	#access_endpoints: close({
		endpoint_type!: string
		vpce_id?:       string
	})

	#application_settings: close({
		enabled!:        bool
		settings_group?: string
	})

	#storage_connectors: close({
		connector_type!: string
		domains?: [...string]
		resource_identifier?: string
	})

	#streaming_experience_settings: close({
		preferred_protocol?: string
	})

	#user_settings: close({
		action!:     string
		permission!: string
	})
}
