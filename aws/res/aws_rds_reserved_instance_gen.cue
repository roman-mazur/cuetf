package res

#aws_rds_reserved_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_reserved_instance")
	close({
		arn?:                 string
		currency_code?:       string
		db_instance_class?:   string
		duration?:            number
		fixed_price?:         number
		id?:                  string
		instance_count?:      number
		lease_id?:            string
		multi_az?:            bool
		offering_id!:         string
		offering_type?:       string
		timeouts?:            #timeouts
		product_description?: string
		recurring_charges?: [...close({
			recurring_charge_amount?:    number
			recurring_charge_frequency?: string
		})]
		region?:         string
		reservation_id?: string
		start_time?:     string
		state?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
		usage_price?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
