package res

#aws_cloudfrontkeyvaluestore_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfrontkeyvaluestore_key")
	id?:                  string
	key!:                 string
	key_value_store_arn!: string
	total_size_in_bytes?: number
	value!:               string
}
