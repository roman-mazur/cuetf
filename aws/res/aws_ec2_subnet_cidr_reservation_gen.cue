package res

#aws_ec2_subnet_cidr_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_subnet_cidr_reservation")
	cidr_block!:       string
	description?:      string
	id?:               string
	owner_id?:         string
	reservation_type!: string
	subnet_id!:        string
}
