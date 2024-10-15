package data

#aws_networkmanager_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_device")
	arn?: string
	aws_location?: [...{
		subnet_arn?: string
		zone?:       string
	}]
	description?:       string
	device_id!:         string
	global_network_id!: string
	id?:                string
	location?: [...{
		address?:   string
		latitude?:  string
		longitude?: string
	}]
	model?:         string
	serial_number?: string
	site_id?:       string
	tags?: [string]: string
	type?:   string
	vendor?: string
}
