package data

#aws_directory_service_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_directory")
	close({
		access_url?: string
		alias?:      string
		connect_settings?: [...close({
			availability_zones?: [...string]
			connect_ips?: [...string]
			customer_dns_ips?: [...string]
			customer_username?: string
			subnet_ids?: [...string]
			vpc_id?: string
		})]
		description?:  string
		directory_id!: string
		dns_ip_addresses?: [...string]
		edition?:    string
		enable_sso?: bool
		id?:         string
		name?:       string
		radius_settings?: [...close({
			authentication_protocol?: string
			display_label?:           string
			radius_port?:             number
			radius_retries?:          number
			radius_servers?: [...string]
			radius_timeout?:    number
			use_same_username?: bool
		})]
		region?:            string
		security_group_id?: string
		short_name?:        string
		size?:              string
		tags?: [string]: string
		type?: string
		vpc_settings?: [...close({
			availability_zones?: [...string]
			subnet_ids?: [...string]
			vpc_id?: string
		})]
	})
}
