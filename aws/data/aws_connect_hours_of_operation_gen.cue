package data

#aws_connect_hours_of_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_connect_hours_of_operation")
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
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		hours_of_operation_id?: string
		id?:                    string
		instance_id!:           string
		name?:                  string
		tags?: [string]: string
		time_zone?: string
	})
}
