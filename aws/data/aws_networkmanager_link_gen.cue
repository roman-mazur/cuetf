package data

#aws_networkmanager_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_link")
	close({
		arn?: string
		bandwidth?: [...close({
			download_speed?: number
			upload_speed?:   number
		})]
		description?:       string
		global_network_id!: string
		id?:                string
		link_id!:           string
		provider_name?:     string
		site_id?:           string
		tags?: [string]: string
		type?: string
	})
}
