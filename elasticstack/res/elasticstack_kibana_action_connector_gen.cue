package res

#elasticstack_kibana_action_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_action_connector")
	close({
		config?:             string
		connector_id?:       string
		connector_type_id!:  string
		id?:                 string
		is_deprecated?:      bool
		is_missing_secrets?: bool
		is_preconfigured?:   bool
		name!:               string
		secrets?:            string
		space_id?:           string
	})
}
