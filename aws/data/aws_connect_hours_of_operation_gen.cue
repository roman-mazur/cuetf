package data

#aws_connect_hours_of_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_hours_of_operation")
	close({
		arn?: string
		config?: [...close({
			day?: string
			end_time?: [...close({
				hours?:   number
				minutes?: number
			})]
			start_time?: [...close({
				hours?:   number
				minutes?: number
			})]
		})]
		description?:           string
		hours_of_operation_id?: string
		id?:                    string
		instance_id!:           string
		name?:                  string
		region?:                string
		tags?: [string]: string
		time_zone?: string
	})
}
