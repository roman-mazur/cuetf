package res

import "list"

#aws_dms_replication_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dms_replication_instance")
	close({
		allocated_storage?:           number
		allow_major_version_upgrade?: bool
		apply_immediately?:           bool
		auto_minor_version_upgrade?:  bool
		availability_zone?:           string
		dns_name_servers?:            string
		engine_version?:              string
		id?:                          string
		kms_key_arn?:                 string
		multi_az?:                    bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		network_type?: string
		kerberos_authentication_settings?: matchN(1, [#kerberos_authentication_settings, list.MaxItems(1) & [...#kerberos_authentication_settings]])
		timeouts?:                     #timeouts
		preferred_maintenance_window?: string
		publicly_accessible?:          bool
		replication_instance_arn?:     string
		replication_instance_class!:   string
		replication_instance_id!:      string
		replication_instance_private_ips?: [...string]
		replication_instance_public_ips?: [...string]
		replication_subnet_group_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_security_group_ids?: [...string]
	})

	#kerberos_authentication_settings: close({
		key_cache_secret_iam_arn!: string
		key_cache_secret_id!:      string
		krb5_file_contents!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
