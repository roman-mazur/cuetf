package res

import "list"

#azurerm_spring_cloud_customized_accelerator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_customized_accelerator")
	close({
		git_repository?: matchN(1, [#git_repository, list.MaxItems(1) & [_, ...] & [...#git_repository]])
		accelerator_tags?: [...string]
		accelerator_type?:            string
		description?:                 string
		display_name?:                string
		icon_url?:                    string
		id?:                          string
		name!:                        string
		spring_cloud_accelerator_id!: string
		timeouts?:                    #timeouts
	})

	#git_repository: close({
		basic_auth?: matchN(1, [_#defs."/$defs/git_repository/$defs/basic_auth", list.MaxItems(1) & [..._#defs."/$defs/git_repository/$defs/basic_auth"]])
		branch?:              string
		ca_certificate_id?:   string
		commit?:              string
		git_tag?:             string
		interval_in_seconds?: number
		path?:                string
		url!:                 string
		ssh_auth?: matchN(1, [_#defs."/$defs/git_repository/$defs/ssh_auth", list.MaxItems(1) & [..._#defs."/$defs/git_repository/$defs/ssh_auth"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/git_repository/$defs/basic_auth": close({
		password!: string
		username!: string
	})

	_#defs: "/$defs/git_repository/$defs/ssh_auth": close({
		host_key?:           string
		host_key_algorithm?: string
		private_key!:        string
	})
}
