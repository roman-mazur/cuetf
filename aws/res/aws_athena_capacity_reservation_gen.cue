package res

#aws_athena_capacity_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_athena_capacity_reservation")
	close({
		timeouts?:       #timeouts
		allocated_dpus?: number
		arn?:            string
		name!:           string
		region?:         string
		status?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_dpus!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
