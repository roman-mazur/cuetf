package res

#aws_eip_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eip_association")
	allocation_id?:        string
	allow_reassociation?:  bool
	id?:                   string
	instance_id?:          string
	network_interface_id?: string
	private_ip_address?:   string
	public_ip?:            string
}
