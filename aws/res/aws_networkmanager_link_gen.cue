package res

import "list"

#aws_networkmanager_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_link")
	close({
		arn?:               string
		description?:       string
		global_network_id!: string
		id?:                string
		bandwidth!: matchN(1, [#bandwidth, list.MaxItems(1) & [_, ...] & [...#bandwidth]])
		provider_name?: string
		site_id!:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:     string
		timeouts?: #timeouts
	})

	#bandwidth: close({
		download_speed?: number
		upload_speed?:   number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
