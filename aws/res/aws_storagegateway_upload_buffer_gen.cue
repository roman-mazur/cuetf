package res

#aws_storagegateway_upload_buffer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_storagegateway_upload_buffer")
	disk_id?:    string
	disk_path?:  string
	gateway_arn: string
	id?:         string
}
