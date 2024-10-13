package data

#aws_dx_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_connection")
	arn?:              string
	aws_device?:       string
	bandwidth?:        string
	id?:               string
	location?:         string
	name!:             string
	owner_account_id?: string
	partner_name?:     string
	provider_name?:    string
	tags?: [string]: string
	vlan_id?: number
}
