package data

#aws_dx_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_dx_connection")
	close({
		arn?:        string
		aws_device?: string
		bandwidth?:  string
		id?:         string
		location?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		name!:             string
		owner_account_id?: string
		partner_name?:     string
		provider_name?:    string
		state?:            string
		tags?: [string]: string
		vlan_id?: number
	})
}
