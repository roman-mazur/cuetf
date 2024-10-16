package res

#aws_ec2_transit_gateway_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_route_table_association")
	id?:                             string
	replace_existing_association?:   bool
	resource_id?:                    string
	resource_type?:                  string
	transit_gateway_attachment_id!:  string
	transit_gateway_route_table_id!: string
}
