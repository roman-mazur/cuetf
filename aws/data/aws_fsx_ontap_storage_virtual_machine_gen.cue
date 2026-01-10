package data

#aws_fsx_ontap_storage_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_fsx_ontap_storage_virtual_machine")
	close({
		active_directory_configuration?: [...close({
			netbios_name?: string
			self_managed_active_directory_configuration?: [...close({
				dns_ips?: [...string]
				domain_name?:                            string
				file_system_administrators_group?:       string
				organizational_unit_distinguished_name?: string
				username?:                               string
			})]
		})]
		arn?:           string
		creation_time?: string
		endpoints?: [...close({
			iscsi?: [...close({
				dns_name?: string
				ip_addresses?: [...string]
			})]
			management?: [...close({
				dns_name?: string
				ip_addresses?: [...string]
			})]
			nfs?: [...close({
				dns_name?: string
				ip_addresses?: [...string]
			})]
			smb?: [...close({
				dns_name?: string
				ip_addresses?: [...string]
			})]
		})]
		file_system_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		filter?: matchN(1, [#filter, [...#filter]])
		lifecycle_status?: string
		lifecycle_transition_reason?: [...close({
			message?: string
		})]
		name?:    string
		subtype?: string
		tags?: [string]: string
		uuid?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
