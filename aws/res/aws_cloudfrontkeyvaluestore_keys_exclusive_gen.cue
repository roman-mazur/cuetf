package res

#aws_cloudfrontkeyvaluestore_keys_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfrontkeyvaluestore_keys_exclusive")
	close({
		resource_key_value_pair?: matchN(1, [#resource_key_value_pair, [...#resource_key_value_pair]])
		key_value_store_arn!: string
		max_batch_size?:      number
		total_size_in_bytes?: number
	})

	#resource_key_value_pair: close({
		key!:   string
		value!: string
	})
}
