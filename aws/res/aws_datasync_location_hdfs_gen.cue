package res

import "list"

#aws_datasync_location_hdfs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_hdfs")
	agent_arns!: [...string]
	arn?:                       string
	authentication_type?:       string
	block_size?:                number
	id?:                        string
	kerberos_keytab?:           string
	kerberos_keytab_base64?:    string
	kerberos_krb5_conf?:        string
	kerberos_krb5_conf_base64?: string
	kerberos_principal?:        string
	kms_key_provider_uri?:      string
	replication_factor?:        number
	simple_user?:               string
	subdirectory?:              string
	tags?: [string]:     string
	tags_all?: [string]: string
	uri?: string
	name_node?: #name_node | [_, ...] & [...#name_node]
	qop_configuration?: #qop_configuration | list.MaxItems(1) & [...#qop_configuration]

	#name_node: {
		hostname!: string
		port!:     number
	}

	#qop_configuration: {
		data_transfer_protection?: string
		rpc_protection?:           string
	}
}
