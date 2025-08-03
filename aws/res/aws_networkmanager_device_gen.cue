package res

import "list"

#aws_networkmanager_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_device")
	close({
		arn?:         string
		description?: string
		aws_location?: matchN(1, [#aws_location, list.MaxItems(1) & [...#aws_location]])
		location?: matchN(1, [#location, list.MaxItems(1) & [...#location]])
		global_network_id!: string
		id?:                string
		timeouts?:          #timeouts
		model?:             string
		serial_number?:     string
		site_id?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:   string
		vendor?: string
	})

	#aws_location: close({
		subnet_arn?: string
		zone?:       string
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
