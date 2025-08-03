package res

#aws_redshift_hsm_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_hsm_configuration")
	close({
		arn?:                           string
		description!:                   string
		hsm_configuration_identifier!:  string
		hsm_ip_address!:                string
		hsm_partition_name!:            string
		hsm_partition_password!:        string
		hsm_server_public_certificate!: string
		id?:                            string
		region?:                        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
