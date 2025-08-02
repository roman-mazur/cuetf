package res

#aws_storagegateway_working_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_storagegateway_working_storage")
	close({
		disk_id!:     string
		gateway_arn!: string
		id?:          string
		region?:      string
	})
}
