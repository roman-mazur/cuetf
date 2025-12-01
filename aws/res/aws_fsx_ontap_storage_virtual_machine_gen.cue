package res

import "list"

#aws_fsx_ontap_storage_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fsx_ontap_storage_virtual_machine")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
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
		file_system_id!: string
		id?:             string
		name!:           string
		active_directory_configuration?: matchN(1, [#active_directory_configuration, list.MaxItems(1) & [...#active_directory_configuration]])
		timeouts?:                   #timeouts
		root_volume_security_style?: string
		subtype?:                    string
		svm_admin_password?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		uuid?: string
	})

	#active_directory_configuration: close({
		self_managed_active_directory_configuration?: matchN(1, [_#defs."/$defs/active_directory_configuration/$defs/self_managed_active_directory_configuration", list.MaxItems(1) & [..._#defs."/$defs/active_directory_configuration/$defs/self_managed_active_directory_configuration"]])
		netbios_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/active_directory_configuration/$defs/self_managed_active_directory_configuration": close({
		dns_ips!: [...string]
		domain_name!:                            string
		file_system_administrators_group?:       string
		organizational_unit_distinguished_name?: string
		password!:                               string
		username!:                               string
	})
}
