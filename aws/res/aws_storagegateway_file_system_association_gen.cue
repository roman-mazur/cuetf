package res

import "list"

#aws_storagegateway_file_system_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_storagegateway_file_system_association")
	close({
		arn?:                   string
		audit_destination_arn?: string
		cache_attributes?: matchN(1, [#cache_attributes, list.MaxItems(1) & [...#cache_attributes]])
		timeouts?:     #timeouts
		gateway_arn!:  string
		id?:           string
		location_arn!: string
		password!:     string
		region?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		username!: string
	})

	#cache_attributes: close({
		cache_stale_timeout_in_seconds?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
