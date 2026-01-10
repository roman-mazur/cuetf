package res

#aws_cloudfrontkeyvaluestore_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfrontkeyvaluestore_key")
	close({
		// The key to put.
		key!: string

		// The Amazon Resource Name (ARN) of the Key Value Store.
		key_value_store_arn!: string

		// Total size of the Key Value Store in bytes.
		total_size_in_bytes?: number

		// The value to put.
		value!: string
	})
}
