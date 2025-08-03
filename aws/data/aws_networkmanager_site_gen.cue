package data

#aws_networkmanager_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_site")
	close({
		arn?:               string
		description?:       string
		global_network_id!: string
		id?:                string
		location?: [...close({
			address?:   string
			latitude?:  string
			longitude?: string
		})]
		site_id!: string
		tags?: [string]: string
	})
}
