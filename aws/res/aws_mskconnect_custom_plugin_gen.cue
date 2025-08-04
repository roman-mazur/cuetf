package res

import "list"

#aws_mskconnect_custom_plugin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mskconnect_custom_plugin")
	close({
		arn?:             string
		content_type!:    string
		description?:     string
		id?:              string
		latest_revision?: number
		name!:            string
		region?:          string
		location?: matchN(1, [#location, list.MaxItems(1) & [_, ...] & [...#location]])
		state?:    string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#location: close({
		s3?: matchN(1, [_#defs."/$defs/location/$defs/s3", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/location/$defs/s3"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/location/$defs/s3": close({
		bucket_arn!:     string
		file_key!:       string
		object_version?: string
	})
}
