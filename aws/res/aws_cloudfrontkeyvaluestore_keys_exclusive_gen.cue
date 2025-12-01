package res

#aws_cloudfrontkeyvaluestore_keys_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfrontkeyvaluestore_keys_exclusive")
	close({
		// The Amazon Resource Name (ARN) of the Key Value Store.
		key_value_store_arn!: string
		resource_key_value_pair?: matchN(1, [#resource_key_value_pair, [...#resource_key_value_pair]])

		// Maximum resource key values pairs that you wills update in a
		// single API request. AWS has a default quota of 50 keys or a 3
		// MB payload, whichever is reached first
		max_batch_size?: number

		// Total size of the Key Value Store in bytes.
		total_size_in_bytes?: number
	})

	#resource_key_value_pair: close({
		// The key to put.
		key!: string

		// The value to put.
		value!: string
	})
}
