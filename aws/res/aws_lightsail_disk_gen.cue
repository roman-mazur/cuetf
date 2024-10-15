package res

#aws_lightsail_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_disk")
	arn?:               string
	availability_zone!: string
	created_at?:        string
	id?:                string
	name!:              string
	size_in_gb!:        number
	support_code?:      string
	tags?: [string]:     string
	tags_all?: [string]: string
}
