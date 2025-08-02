package data

#aws_dx_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_connection")
	close({
		arn?:              string
		aws_device?:       string
		bandwidth?:        string
		id?:               string
		location?:         string
		name!:             string
		owner_account_id?: string
		partner_name?:     string
		provider_name?:    string
		region?:           string
		state?:            string
		tags?: [string]: string
		vlan_id?: number
	})
}
