package data

#aws_connect_quick_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_quick_connect")
	close({
		arn?:         string
		description?: string
		id?:          string
		instance_id!: string
		name?:        string
		quick_connect_config?: [...close({
			phone_config?: [...close({
				phone_number?: string
			})]
			queue_config?: [...close({
				contact_flow_id?: string
				queue_id?:        string
			})]
			quick_connect_type?: string
			user_config?: [...close({
				contact_flow_id?: string
				user_id?:         string
			})]
		})]
		quick_connect_id?: string
		region?:           string
		tags?: [string]: string
	})
}
