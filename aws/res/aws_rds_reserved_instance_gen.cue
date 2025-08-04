package res

#aws_rds_reserved_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_reserved_instance")
	close({
		arn?:               string
		currency_code?:     string
		db_instance_class?: string
		duration?:          number
		fixed_price?:       number
		id?:                string
		timeouts?:          #timeouts
		instance_count?:    number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		lease_id?:            string
		multi_az?:            bool
		offering_id!:         string
		offering_type?:       string
		product_description?: string
		recurring_charges?: [...close({
			recurring_charge_amount?:    number
			recurring_charge_frequency?: string
		})]
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
