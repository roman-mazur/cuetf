package res

#aws_volume_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_volume_attachment")
	close({
		timeouts?:                       #timeouts
		device_name!:                    string
		force_detach?:                   bool
		id?:                             string
		instance_id!:                    string
		region?:                         string
		skip_destroy?:                   bool
		stop_instance_before_detaching?: bool
		volume_id!:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
