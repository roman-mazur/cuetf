package data

#aws_rds_reserved_instance_offering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_reserved_instance_offering")
	close({
		currency_code?:       string
		db_instance_class!:   string
		duration!:            number
		fixed_price?:         number
		id?:                  string
		multi_az!:            bool
		offering_id?:         string
		offering_type!:       string
		product_description!: string
		region?:              string
	})
}
