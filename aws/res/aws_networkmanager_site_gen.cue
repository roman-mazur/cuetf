package res

import "list"

#aws_networkmanager_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_site")
	close({
		location?: matchN(1, [#location, list.MaxItems(1) & [...#location]])
		arn?:               string
		description?:       string
		global_network_id!: string
		id?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#location: close({
		address?:   string
		latitude?:  string
		longitude?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
