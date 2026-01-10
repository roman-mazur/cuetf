package res

#aws_finspace_kx_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_finspace_kx_volume")
	close({
		arn?: string
		attached_clusters?: [...close({
			cluster_name?:   string
			cluster_status?: string
			cluster_type?:   string
		})]
		availability_zones!: [...string]
		az_mode!:           string
		created_timestamp?: string
		description?:       string
		environment_id!:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		nas1_configuration?: matchN(1, [#nas1_configuration, [...#nas1_configuration]])
		timeouts?:                #timeouts
		last_modified_timestamp?: string
		name!:                    string
		status?:                  string
		status_reason?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#nas1_configuration: close({
		size!: number
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
