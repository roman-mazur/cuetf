package res

#aws_ec2_image_block_public_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_image_block_public_access")
	close({
		id?:       string
		state!:    string
		timeouts?: #timeouts
	})

	#timeouts: close({
		update?: string
	})
}
