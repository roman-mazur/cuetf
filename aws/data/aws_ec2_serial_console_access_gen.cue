package data

#aws_ec2_serial_console_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_serial_console_access")
	close({
		timeouts?: #timeouts
		enabled?:  bool
		id?:       string
		region?:   string
	})

	#timeouts: close({
		read?: string
	})
}
