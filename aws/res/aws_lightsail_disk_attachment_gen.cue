package res

#aws_lightsail_disk_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_disk_attachment")
	disk_name!:     string
	disk_path!:     string
	id?:            string
	instance_name!: string
}
