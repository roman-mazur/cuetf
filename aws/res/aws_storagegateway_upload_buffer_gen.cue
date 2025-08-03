package res

#aws_storagegateway_upload_buffer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_storagegateway_upload_buffer")
	close({
		disk_id?:     string
		disk_path?:   string
		gateway_arn!: string
		id?:          string
		region?:      string
	})
}
