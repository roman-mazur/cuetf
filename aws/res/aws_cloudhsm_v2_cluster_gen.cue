package res

#aws_cloudhsm_v2_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudhsm_v2_cluster")
	close({
		cluster_certificates?: [...close({
			aws_hardware_certificate?:          string
			cluster_certificate?:               string
			cluster_csr?:                       string
			hsm_certificate?:                   string
			manufacturer_hardware_certificate?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		cluster_id?:               string
		cluster_state?:            string
		hsm_type!:                 string
		id?:                       string
		mode?:                     string
		timeouts?:                 #timeouts
		security_group_id?:        string
		source_backup_identifier?: string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
