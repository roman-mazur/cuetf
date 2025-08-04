package res

import "list"

#aws_quicksight_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_folder")
	close({
		arn?:            string
		aws_account_id?: string
		created_time?:   string
		folder_id!:      string
		folder_path?: [...string]
		folder_type?: string
		id?:          string
		permissions?: matchN(1, [#permissions, list.MaxItems(64) & [...#permissions]])
		last_updated_time?: string
		name?:              string
		timeouts?:          #timeouts
		parent_folder_arn?: string
		region?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#permissions: close({
		actions!: [...string]
		principal!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
