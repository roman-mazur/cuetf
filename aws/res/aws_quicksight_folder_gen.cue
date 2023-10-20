package res

import "list"

#aws_quicksight_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_quicksight_folder")
	arn?:            string
	aws_account_id?: string
	created_time?:   string
	folder_id:       string
	folder_path?: [...string]
	folder_type?:       string
	id?:                string
	last_updated_time?: string
	name?:              string
	parent_folder_arn?: string
	tags?: [string]: string
	tags_all?: [string]: string
	permissions?: #permissions | list.MaxItems(64) & [...#permissions]
	timeouts?:    #timeouts

	#permissions: {
		actions: [...string]
		principal: string
	}

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
